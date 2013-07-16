echo "\n\nInstalling themes.."
mkdir -p ~/.emacs.d/themes

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

echo "Done..\n"
echo "Remember to include the themes in your .emacs config i.e (load-theme 'hickey t)\n\n"
