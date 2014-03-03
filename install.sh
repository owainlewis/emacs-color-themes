echo "\n\nInstalling themes.."
mkdir -p ~/.emacs.d/themes

echo "Installing Brin"
cp themes/brin-theme.el ~/.emacs.d/themes/brin-theme.el

echo "Installing Hickey"
cp themes/hickey-theme.el ~/.emacs.d/themes/hickey-theme.el

echo "Installing Fogus"
cp themes/fogus-theme.el ~/.emacs.d/themes/fogus-theme.el

echo "Installing Dorsey"
cp themes/dorsey-theme.el ~/.emacs.d/themes/dorsey-theme.el

echo "Installing Wilson"
cp themes/wilson-theme.el ~/.emacs.d/themes/wilson-theme.el

echo "Installing Graham"
cp themes/graham-theme.el ~/.emacs.d/themes/graham-theme.el

echo "Installing McCarthy"
cp themes/mccarthy-theme.el ~/.emacs.d/themes/mccarthy-theme.el

echo "Installing Odersky"
cp themes/odersky-theme.el ~/.emacs.d/themes/odersky-theme.el

echo "Installing Spolsky"
cp themes/spolsky-theme.el ~/.emacs.d/themes/spolsky-theme.el

echo "Installing Junio"
cp themes/junio-theme.el ~/.emacs.d/themes/junio-theme.el

echo "Installing Granger"
cp themes/granger-theme.el ~/.emacs.d/themes/granger-theme.el

echo "Done..\n"
echo "Remember to include the themes in your .emacs config i.e (load-theme 'hickey t)\n\n"
