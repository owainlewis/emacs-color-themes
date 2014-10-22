#!/bin/bash
TARGET=~/.emacs.d/themes

echo -e "\nInstalling themes [$TARGET]..."
mkdir -p $TARGET

echo "Installing Brin"
cp themes/brin-theme.el $TARGET/brin-theme.el

echo "Installing Hickey"
cp themes/hickey-theme.el $TARGET/hickey-theme.el

echo "Installing Fogus"
cp themes/fogus-theme.el $TARGET/fogus-theme.el

echo "Installing Dorsey"
cp themes/dorsey-theme.el $TARGET/dorsey-theme.el

echo "Installing Wilson"
cp themes/wilson-theme.el $TARGET/wilson-theme.el

echo "Installing Graham"
cp themes/graham-theme.el $TARGET/graham-theme.el

echo "Installing McCarthy"
cp themes/mccarthy-theme.el $TARGET/mccarthy-theme.el

echo "Installing Odersky"
cp themes/odersky-theme.el $TARGET/odersky-theme.el

echo "Installing Spolsky"
cp themes/spolsky-theme.el $TARGET/spolsky-theme.el

echo "Installing Junio"
cp themes/junio-theme.el $TARGET/junio-theme.el

echo "Installing Granger"
cp themes/granger-theme.el $TARGET/granger-theme.el

echo "Done."
echo -e "Remember to include the themes in your .emacs config i.e (load-theme 'hickey t)\n"
