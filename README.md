# VMware Secure Boot Sign for Linux

This is a script to sign the vmware modules (vmmon.ko and vmnet.ko) for secure boot on Linux.

# Explanation

gen-key.sh: This will generate a keys for signing the vmware modules (vmmon.ko and vmnet.ko).
sign.sh: This will sign the vmware modules (vmmon.ko and vmnet.ko) and load into kernel.

This will sign vmmon.ko and vmnet.ko files on the Linux kernel.

NOTE: May not work on other distros.

# How to run

First run `gen-key.sh` then reboot to approve the key into your system

After rebooting, run `sign.sh`
