#!/bin/bash

# Set the directory path
SCRIPT_DIR="$HOME/.sat"

sleep_minutes=10

    # Delete the previous pictures to save space
    rm -f $SCRIPT_DIR/*.jpg
while true; do
    # Create the directory if it doesn't exist
    mkdir -p "$SCRIPT_DIR"

    # Get current date and time for unique filenames
    TIMESTAMP=$(date +"%Y%m%d%H%M%S")

    # Download the GOES satellite image
    curl "https://cdn.star.nesdis.noaa.gov/GOES16/ABI/FD/GEOCOLOR/21696x21696.jpg" > "$SCRIPT_DIR/goes_image.jpg"

    # Set the input and output filenames
    input_image="$(ls $SCRIPT_DIR/*.jpg)"
    output_image="$SCRIPT_DIR/cropped_goes_image.jpg"
    marker_image="$SCRIPT_DIR/marker.png"

    # Crop the image to the desired dimensions
    convert "$input_image" -crop 12000x7500+2000+1500 "$output_image"

    # Add a marker to denote the spot
    convert "$output_image" "$marker_image" -geometry +4020+1714 -composite "$output_image"

    # Set the cropped image as wallpaper
    gsettings set org.mate.background picture-filename "$output_image"

    # Send the file home
    rsync -avz -e "ssh -p 8222" "$output_image" nowhereman@10.0.0.98:~/.sat/

	sleep 2

	ssh -p 8222 nowhereman@10.0.0.98 "gsettings set org.mate.background picture-filename "$output_image""

    # Sleep for 60 minutes before repeating
    sleep "$((sleep_minutes * 60))"

    # Delete the previous pictures to save space
    rm -f $SCRIPT_DIR/*.jpg

done
