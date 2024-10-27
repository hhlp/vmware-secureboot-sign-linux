#!/bin/bash
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root. Exiting."
   exit 1
fi

/usr/src/kernels/$(uname -r)/scripts/sign-file \
      sha256 \
      MOK.priv \
      MOK.der \
      /lib/modules/$(uname -r)/misc/vmmon.ko
echo "Signed vmmon"
/usr/src/kernels/$(uname -r)/scripts/sign-file \
      sha256 \
      MOK.priv \
      MOK.der \
      /lib/modules/$(uname -r)/misc/vmnet.ko
echo "Signed vmnet"

modprobe vmmon
