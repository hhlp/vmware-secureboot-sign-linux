# VMware Secure Boot Sign for Linux

This is a script to sign the VMware/VirtalBox modules for secure boot on Linux.
    - vmmon.ko and vmnet.ko for VMWare.
    - vboxdrv.ko for VirtualBox.

# Explanation

NOTE: May not work on other distros.

# How to Install

1. Run Install:
  a. Run `install -b` for VirtualBox
  b. Run `install -w` for VMware

and follow the steps provides.

2. Run one-time-setup, only Once:
  a. Run `one-time-setup -b` for VirtualBox
  b. Run `one-time-setup -w` for VMware

and follow the steps provides

# How to Uninstall

1. Run Uninstall:
  a. Run `uninstall -b` for VirtualBox
  b. Run `uninstall -w` for VMware
