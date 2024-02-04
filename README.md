# Termux Remote Management Script

Script        **requires**       your       **~/.ssh/config**       and pubkey auth to be setup for best results. Also requires rsync to run the backup option. Additionally, install the [Termux: Widget](https://f-droid.org/repo/com.termux.widget_13.apk) app to allow for easier access to your scripts from Launcher's home screen

This script is a versatile tool for managing remote Linux systems using Termux on your Android device. It provides a menu-driven interface with various options to simplify common administrative tasks.

### Features:
1. **Connect to Remote Linux System:** Easily establish an SSH connection to your configured remote hosts.

2. **Update All Installed Packages:** Keep your remote system up-to-date by running a package update command.

3. **Monitor System Logs:** Select a remote host and monitor various system logs interactively.

4. **Backup Important Files:** Backup and restore files between your local and remote systems using rsync.

5. **Adjust Sound with alsamixer:** Remotely adjust sound settings using alsamixer on the selected host.

6. **Run youtube-toggle on area-51:** Blocks YouTube on 'area-51'.

7. **Run sat.sh on area-51:** sets the wallpaper to current GOES East image cropped to USA on 'area-51' and 'home'.

8. **Reboot or Shutdown Remote System:** Perform remote system actions like rebooting or shutting down.

### Instructions:
- The script reads remote hosts from your SSH config, allowing easy customization.

- Utilizes the select statement for interactive menu options, ensuring user-friendly navigation.

- Uses various commands like ssh, rsync, alsamixer, and more to accomplish different tasks.

### How to Use from within Termux:
1. Copy the script to your Termux environment, e.g. ~/.shortcuts/admin.

2. Make it executable: `chmod +x ~/.shortcuts/admin`

3. Run the script: `~/.shortcuts/admin`

4. Follow the on-screen menu to perform desired actions on your remote Linux systems.

### How to Use from Termux:Widget:
1. Copy the script to your Termux environment, e.g. ~/.shortcuts/admin.

2. Make it executable: `chmod +x ~/.shortcuts/admin`

3. Long-press the home screen > add widget > Termux:Widget > Termux shortcut > drag to Launcher home > select admin

4. Click admin shortcut

5. Follow the on-screen menu to perform desired actions on your remote Linux systems.

Feel free to customize and extend the script according to your needs. Contributions and suggestions are welcome!
