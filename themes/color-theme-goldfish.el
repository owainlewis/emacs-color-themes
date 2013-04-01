;; ---------------------------
;;
;; Goldfish Color Theme
;;
;; ----------------------------

(eval-when-compile
  (require 'color-theme))

(setq debug-on-error t)

(defconst custom-theme-description "A custom color theme")
(defconst custom-theme-name "Custom theme")

;; background -> background
;; foreground -> foreground
;; selection -> region
;; Built-in constant -> font-lock-builtin-face
;; String -> font-lock-string-face
;; comment -> font-lock-comment-faceco
;; variable -> font-lock-variable-name-face
;; A custom color theme
;; function name -> font-lock-function-name-face

(setq theme-defaults '(color-theme-goldfish
  ((background-color . "#2E3336")
   (background-mode . dark)
   (border-color . "#000000")
   (cursor-color . "#999999")
   (foreground-color . "#F8F8F2")
   (mouse-color . "black"))

 (fringe ((t (:background "#ffffff"))))

 ;; The bottom active tab
 (mode-line ((t (:foreground "#999999" :background "#222222"))))

 (region ((t (:foreground "#465459" :background "#161A1F"))))
 (font-lock-builtin-face ((t (:foreground "#F38630"))))
 (font-lock-comment-face ((t (:foreground "#505C63"))))
 (font-lock-function-name-face ((t (:foreground "#AEE239"))))
 (font-lock-keyword-face ((t (:foreground "#A7DBD8")))) ;; keywords
 (font-lock-string-face ((t (:foreground "#F8F8F0"))))
 (font-lock-type-face ((t (:foreground"#999999"))))
 (font-lock-variable-name-face ((t (:foreground "#FD971F"))))
 (minibuffer-prompt ((t (:foreground "#999999" :bold t))))
 (font-lock-warning-face ((t (:foreground "#999999" :bold t))))))

(defun color-theme-goldfish ()
  (interactive)
  (color-theme-install theme-defaults))

(add-to-list 'color-themes
  `(color-theme-custom-theme
    custom-theme-name
    custom-theme-description))

(provide 'color-theme-goldfish)

