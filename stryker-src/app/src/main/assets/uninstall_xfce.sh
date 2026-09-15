#!/bin/bash

function deleting_packages_error() {
    echo "Error while removing VNC packages, please try removing them manually."
    exit 1
}

function deleting_vnc_files_error() {
    echo "Failed to delete some VNC files, please try to delete them manually."
    exit 1
}

export DEBIAN_FRONTEND=noninteractive

apt-get purge -y openssl xvfb x11vnc xfce4 xfce4-session xfce4-panel xfdesktop4 \
    xfwm4 xfconf xfce4-terminal elementary-xfce-icon-theme dbus-x11 || deleting_packages_error
apt-get autoremove -y || deleting_packages_error
rm -rf /root/Desktop /root/Documents /root/Downloads /root/Music /root/Pictures /root/Public /root/Templates /root/Videos /root/.cache /root/.config /root/.local /root/.vnc /tmp/.X1-lock || deleting_vnc_files_error