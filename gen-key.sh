#!/bin/bash
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root. Exiting."
   exit 1
fi

openssl req -new -newkey rsa:2048 -keyout /var/lib/shim-signed/mok/vmware.priv -outform DER -out /var/lib/shim-signed/mok/vmware.der -nodes -x509 -days 36500 -subj "/CN=VMware Module Signing Key"
mokutil --import /var/lib/shim-signed/mok/vmware.der

echo "Reboot your computer"
