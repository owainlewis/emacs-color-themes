;; ---------------------------
;;
;; Color Theme Hickey
;;
;; ----------------------------

(eval-when-compile
  (require 'color-theme))

(setq debug-on-error t)
(defconst custom-theme-description "A dark color theme")
(defconst custom-theme-name "Hickey")

(setq theme-defaults '(color-theme-hickey
  ((background-color . "#1D2021")
   (background-mode . dark)
   (border-color . "#000000")
   (cursor-color . "#999999")
   (foreground-color . "#F8F8F2")
   (mouse-color . "black"))
   ;; Side borders
   (fringe ((t (:background "#1D2021"))))
   ;; The bottom active tab
   (mode-line ((t (:foreground "#999999" :background "#555555"))))
   ;; The bottom inactive tab
   (mode-line-inactive ((t (:foreground "#666666" :background "#333333"))))
   ;; Dir-ed search prompt
   (minibuffer-prompt ((default (:foreground "#A7DBD8"))))
   ;; Highlight region color
   (region ((t (:foreground "#465459" :background "#161A1F"))))
   ;; Builtin
   (font-lock-builtin-face ((t (:foreground "#F38630"))))
   ;; Comments
   (font-lock-comment-face ((t (:foreground "#505C63"))))
   ;; Function names
   (font-lock-function-name-face ((t (:foreground "#AEE239"))))
   ;; Keywords
   (font-lock-keyword-face ((t (:foreground "#A7DBD8"))))
   ;; Strings
   (font-lock-string-face ((t (:foreground "#F8F8F0"))))
   ;; Variables
   (font-lock-variable-name-face ((t (:foreground "#FD971F"))))
   (font-lock-type-face ((t (:foreground "#999999"))))
   (font-lock-warning-face ((t (:foreground "#999999" :bold t))))))

(defun color-theme-hickey ()
  (interactive)
  (color-theme-install theme-defaults))

(add-to-list 'color-themes
  `(color-theme-hickey
    custom-theme-name
    custom-theme-description))

(provide 'color-theme-hickey)
