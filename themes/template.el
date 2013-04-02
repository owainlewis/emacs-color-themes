(defun your-config-name-here ()
  (interactive)

  (color-theme-install
   '(your-config-name-here
      ((background-color . "#101e2e")
      (background-mode . light)
      (border-color . "#ed5050")
      (cursor-color . "#978c35")
      (foreground-color . "#eeeeec")
      (mouse-color . "black"))

     ;; Frame borders
     (fringe ((t (:background "#ed5050"))))

     ;; The bottom active window color
     (mode-line ((t (:foreground "#dbdb9a" :background "#555753"))))

     ;; Selection
     (region ((t (:background "#7a907e"))))

     ;; Built in language constructs
     (font-lock-builtin-face ((t (:foreground "#729fcf"))))

     ;; Comments
     (font-lock-comment-face ((t (:foreground "#888a85"))))

     ;; Functions
     (font-lock-function-name-face ((t (:foreground "#edd400"))))

     ;; Keywords
     (font-lock-keyword-face ((t (:foreground "#729fcf"))))

     ;; Strings
     (font-lock-string-face ((t (:foreground "#ad7fa8"))))

     ;; Classes
     (font-lock-type-face ((t (:foreground"#8ae234"))))

     ;; Constants
     (font-lock-constant-face ((t (:foreground "#eeeeec"))))

     ;; Variables
     (font-lock-variable-name-face ((t (:foreground "#eeeeec"))))

     ;; Bottom buffer prompt (i.e M-x color)
     (minibuffer-prompt ((t (:foreground "#4b545d" :bold t))))

     (font-lock-warning-face ((t (:foreground "red" :bold t)))))))

(provide 'your-config-name-here)
