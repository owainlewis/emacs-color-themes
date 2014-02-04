;;; emacs-color-themes.el --- A collection of various emacs colour themes.

;;; Commentary:
;;
;; Themes files are in the `themes/' subdirectory, this file only adds
;; that directory to the load path.

;;; Code:

(let ((dir (file-name-directory load-file-name)))
  (add-to-list 'custom-theme-load-path (concat dir "/themes")))

(provide 'emacs-color-themes)

;;; emacs-color-themes.el ends here

