#!/bin/bash

password=$(echo -n "teste" | docker run -i --rm atmoz/makepasswd --crypt-md5 --clearfrom=- | awk '{print $2}')

# Absolute path to this script, e.g. /home/user/bin/foo.sh
SCRIPT=$(readlink -f "$0")
# Absolute path this script is in, thus /home/user/bin
SCRIPTPATH=$(dirname "$SCRIPT")
echo $SCRIPTPATH

uid=$(id -u)
gid=$(id -g)

echo $1:$password:e:$uid:$gid:upload >> $SCRIPTPATH/users.conf
