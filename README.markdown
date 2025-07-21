# knub does dotfiles

* `sudo apt update`, `sudo apt upgrade`.
	* Let it run, reboot and check that everything still works:
		* Wifi
		* Suspend
		* Microphone
		* Mute and micmute keys
* Download and install Chrome via website
* Log-in in Chrome (enter password manually from Bitwarden)
* `ssh-keygen` and enter in GitHub
* Install `sudo apt install git`
* `git clone` dotfiles
* `./setup_machine.sh`
* In Vim, run `:BundleInstall`
* Change Terminal visual appeareance to "Tango light"
* To use app icons when switching via Alt + Tab: `gsettings set org.gnome.shell.window-switcher app-icon-mode "app-icon-only"`
* To turn off the dock, open Extensions app and unselect Dock.
* To write a en dash, go to `Keyboard` in `Settings` and set the `Compose Key` to `Caps Lock`.
* To have Spotify shortcuts, go to `Settings -> Keyboard > View and Customize Shortcuts` and add the following:
	* Ctrl + Alt + P: `dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.PlayPause`
	* Ctrl + Alt + \[: `dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Previous`
	* Ctrl + Alt + \]: `dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Next`
* Install Zoom from website
* Install `Simple Net Speed` Gnome Extension: https://extensions.gnome.org/extension/1085/simple-net-speed/
* In `Date & Time` settings, active weekday and seconds display.
* Install Dropbox manually from website
* Install Docker manually from website
* Install Slack manually from website (Snap app exists, but logs out repeatedly because of sandboxing).
