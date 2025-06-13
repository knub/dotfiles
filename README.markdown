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

echo -e "snd-pci-ps\nsnd-soc-ps-mach" | sudo tee /etc/modules-load.d/sound.conf > /dev/null

