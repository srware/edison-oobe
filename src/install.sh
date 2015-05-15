#!/bin/sh

mkdir -p /usr/lib/config_tools
cp -r public /usr/lib/config_tools
cp server.js /usr/lib/config_tools/config-server.js

cp device_config.service /lib/systemd/system
systemctl daemon-reload
systemctl enable device_config

cp configure_device /usr/bin
chmod a+x /usr/bin/configure_device

echo ""
echo ""
echo "SETUP COMPLETE"
echo ""
echo "Feel free to delete this folder or keep it here."
