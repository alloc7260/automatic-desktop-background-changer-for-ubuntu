#!/bin/bash

export DISPLAY=:0
export XDG_RUNTIME_DIR="/run/user/$(id -u)"

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
IMAGE_FOLDER="$SCRIPT_DIR/images"
IMAGE_FILES=($IMAGE_FOLDER/*)
RANDOM_IMAGE="${IMAGE_FILES[RANDOM % ${#IMAGE_FILES[@]}]}"

#light theme
gsettings set org.gnome.desktop.background picture-uri "file:///$RANDOM_IMAGE"
#dark theme
gsettings set org.gnome.desktop.background picture-uri-dark "file:///$RANDOM_IMAGE"
