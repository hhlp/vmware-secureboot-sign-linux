# VMware Secure Boot Sign for Linux
This will sign vmmon.ko and vmnet.ko files on the Linux kernel.

Tested on Fedora 40. May not work on other distros.


# How to run
First run `gen-key.sh` then reboot to approve the key into your system

After rebooting, run `sign.sh`
