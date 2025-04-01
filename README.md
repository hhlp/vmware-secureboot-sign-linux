# VMware Secure Boot Sign for Linux

This is a script to sign the vmware modules (vmmon.ko and vmnet.ko) for secure boot on Linux.

# Explanation

* gen-key.sh: This will generate a keys for signing the vmware modules (vmmon.ko and vmnet.ko).
* * sign.sh: This will sign the vmware modules (vmmon.ko and vmnet.ko) and load into kernel.

NOTE: May not work on other distros.

# How to run

1. Run only Once:
* First run `gen-key.sh` then reboot to approve the key into your system

2. After rebooting or After New Kernel Install an Login into the new Kernel:
* run `sign.sh`

# Note

Only works for the Current Kernel

### To do

https://github.com/hhlp/vmware-secureboot-sign-linux/issues/1
