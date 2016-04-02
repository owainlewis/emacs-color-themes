#!/bin/bash
# This script installs the emacs-color-themes collection.
# The default install location is $HOME/.emacs/themes
#
# Usage: ./install.sh [DEST]

: ${TARGET_DIR:=$1}
: ${TARGET_DIR:=$HOME/.emacs.d/themes}

# make sure the installation directory exists
if [ -d $TARGET_DIR ]; then
    echo "$TARGET_DIR exists."
else
    echo "Creating $TARGET_DIR."
    mkdir -p $TARGET_DIR
fi

# copy files individually
# check for conflicts in case of customized theme files
echo -n "Copying theme files...  "
cp -i ./themes/*-theme.el $TARGET_DIR
echo "Done."

echo -e "\n;; To use a theme, add the following lines to your .emacs config,"
echo -e ";; replacing <theme_name> with the name of the theme to apply:"
echo "(add-to-list 'custom-theme-load-path \"$TARGET_DIR\")"
echo "(load-theme '<theme_name> t)"
