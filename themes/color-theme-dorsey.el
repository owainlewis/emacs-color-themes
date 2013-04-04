;; ---------------------------
;;
;; Color Theme Dorsey
;;
;; ----------------------------

(eval-when-compile
  (require 'color-theme))

(setq debug-on-error t)

(defconst custom-theme-description "A dark grunge color theme")

(defconst custom-theme-name "Dorsey")

(setq theme-defaults '(color-theme-dorsey
  ((background-color . "#292D30")
   (background-mode . dark)
   (border-color . "#FFFFFF")
   (cursor-color . "#FFFFFF")
   (foreground-color . "#FFFFFF")
   (mouse-color . "black"))

   ;; Side borders
   (fringe ((t (:background "#222218"))))

   ;; The bottom active tab
   (mode-line ((t (:foreground "#999999" :background "#FFFFFF"))))

   ;; The bottom inactive tab
   (mode-line-inactive ((t (:foreground "#666666" :background "#FFFFFF"))))

   ;; Dir-ed search prompt
   (minibuffer-prompt ((default (:foreground "#FFFFFF"))))

   ;; Highlight region color
   (region ((t (:foreground "#FFE792" :background "#161A1F"))))

   ;; Builtin
   (font-lock-builtin-face ((t (:foreground "#C7AF3F"))))

   ;; Comments
   (font-lock-comment-face ((t (:foreground "#4F5A63"))))

   ;; Function names
   (font-lock-function-name-face ((t (:foreground "#C7AF3F"))))

   ;; Keywords
   (font-lock-keyword-face ((t (:foreground "#9FB3C2"))))

   ;; Strings
   (font-lock-string-face ((t (:foreground "#FAFFDB"))))

   ;; Variables
   (font-lock-variable-name-face ((t (:foreground "#8AB8A2"))))

   (font-lock-type-face ((t (:foreground "#FFFFFF"))))

   (font-lock-warning-face ((t (:foreground "#FFFFFF" :bold t))))))

(defun color-theme-dorsey ()
  (interactive)
  (color-theme-install theme-defaults))

(add-to-list 'color-themes
  `(color-theme-dorsey
    custom-theme-name
    custom-theme-description))

(provide 'color-theme-dorsey)

