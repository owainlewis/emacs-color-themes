;; ---------------------------
;;
;; Fogus: A bluecolor theme foro Emacs24+
;;
;; ----------------------------


(unless (>= 24 emacs-major-version)
  (error "requires Emacs 24 or later."))

(deftheme fogus
  "A bluecolor theme")

(let ((fogus-background      "#14191F")
      (fogus-foreground      "#AEC2E0")
      (fogus-mid-gray        "#666666")
      (fogus-darker-gray     "#14191f")
      (fogus-white           "#FFFFFF")
      (fogus-off-white       "#F8F8F0")
      (fogus-yellow-white    "#FFE792")
      (fogus-light-gray-blue "#d0dfe6")
      (fogus-lightest-blue   "#effbff")
      (fogus-lighter-blue    "#748aa6")
      (fogus-light-blue      "#6ee2ff")
      (fogus-blue            "#324357")
      (fogus-dark-blue       "#183c66")
      (fogus-darker-blue     "#1b232c")
      (fogus-green           "#95cc5e"))
  (custom-theme-set-faces
   'fogus

   ;; ----------------- Frame stuff --------------------
   `(default ((t (:background ,fogus-background :foreground ,fogus-foreground))))
   `(cursor  ((t (:background ,fogus-off-white))))
   `(hl-line ((t (:background ,fogus-mid-gray))))
   `(modeline ((t (:background ,fogus-dark-blue :foreground ,fogus-white))))
   `(mode-line-inactive ((t (:box nil :background ,fogus-mid-gray :foreground ,fogus-light-gray-blue))))
   `(mode-line ((t (:box nil :foreground ,fogus-white :background ,fogus-dark-blue))))
   `(fringe ((t (:background ,fogus-darker-gray))))
   ;; Dir-ed search prompt
   `(minibuffer-prompt ((default (:foreground ,fogus-white))))
   ;; Highlight region color
   `(region ((t (:foreground ,fogus-yellow-white :background ,fogus-darker-blue))))

   ;; ---------------- Code Highlighting ---------------
   ;; Builtin
   `(font-lock-builtin-face ((t (:foreground ,fogus-light-blue))))
   ;; Constants
   `(font-lock-constant-face ((t (:foreground ,fogus-green))))
   ;; Comments
   `(font-lock-comment-face ((t (:foreground ,fogus-blue))))
   ;; Function names
   `(font-lock-function-name-face ((t (:foreground ,fogus-lightest-blue))))
   ;; Keywords
   `(font-lock-keyword-face ((t (:foreground ,fogus-lighter-blue))))
   ;; Strings
   `(font-lock-string-face ((t (:foreground ,fogus-light-blue))))
   ;; Variables
   `(font-lock-variable-name-face ((t (:foreground ,fogus-light-gray-blue))))
   `(font-lock-type-face ((t (:foreground ,fogus-green))))
   `(font-lock-warning-face ((t (:foreground ,fogus-white :bold t))))

   ;; ---------------- Package Specific Stuff -----------
   ;; Powerline
   `(powerline-active1 ((t (:background ,fogus-off-white :foreground ,fogus-background))))))


;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name)))
  (when (not window-system)
    (custom-set-faces '(default ((t (:background "nil")))))))

(provide-theme 'fogus)

;; Local Variables:
;; no-byte-compile: t
;; End:
