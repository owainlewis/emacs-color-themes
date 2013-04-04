;; ---------------------------
;;
;; Color Theme Fogus
;;
;; ----------------------------

(eval-when-compile
  (require 'color-theme))

(setq debug-on-error t)

(defconst custom-theme-description "A bluecolor theme")

(defconst custom-theme-name "Fogus")

(setq theme-defaults '(color-theme-fogus
  ((background-color . "#14191f")
   (background-mode . dark)
   (border-color . "#183c66")
   (cursor-color . "#F8F8F0")
   (foreground-color . "#aec2e0")
   (mouse-color . "black"))

   ;; Side borders
   (fringe ((t (:background "#14191f"))))

   ;; The bottom active tab
   (mode-line ((t (:foreground "#FFFFFF" :background "#183c66"))))

   ;; The bottom inactive tab
   (mode-line-inactive ((t (:foreground "#666666" :background "#183c66"))))

   ;; Dir-ed search prompt
   (minibuffer-prompt ((default (:foreground "#FFFFFF"))))

   ;; Highlight region color
   (region ((t (:foreground "#FFE792" :background "#1b232c"))))

   ;; Builtin
   (font-lock-builtin-face ((t (:foreground "#6ee2ff"))))

   ;; Comments
   (font-lock-comment-face ((t (:foreground "#324357"))))

   ;; Function names
   (font-lock-function-name-face ((t (:foreground "#effbff"))))

   ;; Keywords
   (font-lock-keyword-face ((t (:foreground "#748aa6"))))

   ;; Strings
   (font-lock-string-face ((t (:foreground "#6ee2ff"))))

   ;; Variables
   (font-lock-variable-name-face ((t (:foreground "#d0dfe6"))))

   (font-lock-type-face ((t (:foreground "#95CC5E"))))

   (font-lock-warning-face ((t (:foreground "#FFFFFF" :bold t))))))

(defun color-theme-fogus ()
  (interactive)
  (color-theme-install theme-defaults))

(add-to-list 'color-themes
  `(color-theme-fogus
    custom-theme-name
    custom-theme-description))

(provide 'color-theme-fogus)

