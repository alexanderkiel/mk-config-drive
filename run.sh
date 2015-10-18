#!/bin/sh

mkdir -p /new-drive/openstack/latest

for f in /config/${FILE:-*.yml}
do
    echo "Build ISO for $(basename $f)"
    cp $f /new-drive/openstack/latest/user_data
    mkisofs -R -V config-2 -input-charset utf-8 -o "/config/$(basename $f .yml).iso" /new-drive
    echo ""
done
