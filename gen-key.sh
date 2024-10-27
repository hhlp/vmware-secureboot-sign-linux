#!/bin/bash
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root. Exiting."
   exit 1
fi

openssl req -new -newkey rsa:2048 -keyout MOK.priv -outform DER -out MOK.der -nodes -x509 -days 36500 -subj "/CN=VMware Module Signing Key"
mokutil --import MOK.der

echo "Reboot your computer"
