#!/bin/bash

# Absolute path to this script, e.g. /home/user/bin/foo.sh
SCRIPT=$(readlink -f "$0")
# Absolute path this script is in, thus /home/user/bin
SCRIPTPATH=$(dirname "$SCRIPT")
echo $SCRIPTPATH

ssh-keygen -t ed25519 -f $SCRIPTPATH/keys/ssh_host_ed25519_key < /dev/null
ssh-keygen -t rsa -b 4096 -f $SCRIPTPATH/keys/ssh_host_rsa_key < /dev/null