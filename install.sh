#!/bin/sh

set -e

NGLE_DIR="/opt/ngle"
NGLE_UDEV_RULES_SRC="00-remove-nvidia.rules"
NGLE_MODPROBE_BLACKLIST_SRC="nvidia-blacklist.conf"
NGLE_X11_NVIDIA_CONF_SRC="nvidia_xorg.conf"


[ ! -d "$NGLE_DIR" ] && sudo mkdir "$NGLE_DIR"

sudo cp -v "$NGLE_UDEV_RULES_SRC" "$NGLE_DIR/$NGLE_UDEV_RULES_SRC" && \
    sudo cp -v "$NGLE_MODPROBE_BLACKLIST_SRC" "$NGLE_DIR/$NGLE_MODPROBE_BLACKLIST_DEST" && \
    sudo cp -v "$NGLE_X11_NVIDIA_CONF_SRC" "$NGLE_DIR/$NGLE_X11_NVIDIA_CONF_DEST" && \
    sudo cp -vf ngle /usr/local/bin/ngle

printf 'ngle installed!\n'
