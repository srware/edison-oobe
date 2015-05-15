#!/bin/sh

rm -rf /usr/lib/config_tools

systemctl stop device_config
systemctl disable device_config
rm /lib/systemd/system/device_config.service

systemctl daemon-reload

rm /usr/bin/configure_device

echo ""
echo ""
echo "UNINSTALL COMPLETE"
echo ""
echo "Feel free to delete this folder or keep it here."
