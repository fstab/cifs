#!/bin/sh

set -o errexit
set -o pipefail

VENDOR=fstab
DRIVER=cifs

driver_dir=$VENDOR${VENDOR:+"~"}${DRIVER}
if [ ! -d "/flexmnt/$driver_dir" ]; then
  mkdir "/flexmnt/$driver_dir"
fi

cp "/$DRIVER" "/flexmnt/$driver_dir/.$DRIVER"
mv -f "/flexmnt/$driver_dir/.$DRIVER" "/flexmnt/$driver_dir/$DRIVER"

chmod +x "/flexmnt/$driver_dir/$DRIVER"

while : ; do
  sleep 3600
done