#!/bin/bash

disk=$(date +%s | sha256sum | base64 | head -c 12).qcow2


qemu-img create -f qcow2 $disk 10G

echo "token1: localhost:5900" > /opt/noVNC/vnc_tokens

/usr/bin/qemu-system-x86_64 -vnc :0 -m 2048 -smp 2 -device virtio-net,netdev=vmnic -netdev user,id=vmnic -cdrom /iso/debian.iso -drive file=$disk -boot d -usbdevice tablet &

/usr/bin/Xvfb :1 -screen 0 1024x768x24+32 &

DISPLAY=:1 qemu-system-x86_64 -cdrom /iso/debian.iso -m 512 -boot d -display gtk  &

/usr/bin/x11vnc -display :1 -rfbport 5900 -usepw -forever -shared -noxrecord -noxdamage -xkb &

/usr/bin/python3 -m websockify.websocketproxy --web /opt/noVNC 5901 127.0.0.1:5900 &

/usr/sbin/nginx -c /etc/nginx/nginx.conf



tail -f /dev/null