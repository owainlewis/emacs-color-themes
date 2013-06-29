echo "\n\nInstalling themes.."
mkdir -p ~/.emacs.d/themes

echo "Installing hickey"
cp themes/hickey-theme.el ~/.emacs.d/themes/hickey-theme.el

echo "Installing Fogus"
cp themes/fogus-theme.el ~/.emacs.d/themes/fogus-theme.el

echo "Done..\n"
echo "Remember to include the themes in your .emacs config i.e (load-theme 'hickey t)\n\n"
