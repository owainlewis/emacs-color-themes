;; ---------------------------
;;
;; Dorsey: A dark grunge color theme
;;
;; ----------------------------

(unless (>= 24 emacs-major-version)
  (error "requires Emacs 24 or later."))

(deftheme dorsey
  "A dark grunge color theme")

(let ((dorsey-background        "#292D30")
      (dorsey-darker-background "#222218")
      (dorsey-rich-black        "#161A1F")
      (dorsey-mid-gray          "#666666")
      (dorsey-light-gray        "#999999")
      (dorsey-foreground        "#FFFFFF")
      (dorsey-light-blue        "#9FB3C2")
      (dorsey-bluegray          "#4F5A63")
      (dorsey-blue-green        "#8AB8A2")
      (dorsey-yellow            "#C7AF3F")
      (dorsey-light-yellow      "#FFE792")
      (dorsey-yellow-white      "#FAFFDB"))
  (custom-theme-set-faces
   'dorsey
   
   ;; ----------------- Frame stuff --------------------
   `(default ((t (:background ,dorsey-background :foreground ,dorsey-foreground))))
   `(cursor  ((t (:background ,dorsey-foreground))))
   `(hl-line ((t (:background ,dorsey-darker-background))))
   `(modeline ((t (:background ,dorsey-foreground :foreground ,dorsey-light-gray))))
   `(mode-line-inactive ((t (:box nil :background ,dorsey-foreground :foreground ,dorsey-light-gray))))
   `(mode-line ((t (:box nil :foreground ,dorsey-mid-gray :background ,dorsey-foreground))))
   `(fringe ((t (:background ,dorsey-darker-background))))
   ;; Dir-ed search prompt
   `(minibuffer-prompt ((default (:foreground ,dorsey-foreground))))
   ;; Highlight region color
   `(region ((t (:foreground ,dorsey-light-yellow :background ,dorsey-rich-black))))

   ;; ---------------- Code Highlighting ---------------
   ;; Builtin
   `(font-lock-builtin-face ((t (:foreground ,dorsey-yellow))))
   ;; Constants
   `(font-lock-constant-face ((t (:foreground ,dorsey-light-gray))))
   ;; Comments
   `(font-lock-comment-face ((t (:foreground ,dorsey-bluegray))))
   ;; Function names
   `(font-lock-function-name-face ((t (:foreground ,dorsey-yellow))))
   ;; Keywords
   `(font-lock-keyword-face ((t (:foreground ,dorsey-light-blue))))
   ;; Strings
   `(font-lock-string-face ((t (:foreground ,dorsey-yellow-white))))
   ;; Variables
   `(font-lock-variable-name-face ((t (:foreground ,dorsey-blue-green))))
   `(font-lock-type-face ((t (:foreground ,dorsey-foreground))))
   `(font-lock-warning-face ((t (:foreground ,dorsey-foreground :bold t))))

   ;; ---------------- Package Specific Stuff -----------
   ;; Powerline
   `(powerline-active1 ((t (:background "gray30" :foreground ,dorsey-rich-black))))
   `(powerline-active2 ((t (:background "gray35" :foreground ,dorsey-rich-black))))
   `(powerline-inactive1 ((t (:background "gray10" :foreground ,dorsey-mid-gray))))
   `(powerline-inactive2 ((t (:background "gray15" :foreground ,dorsey-mid-gray))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name)))
  (when (not window-system)
    (custom-set-faces '(default ((t (:background "nil")))))))

(provide-theme 'dorsey)

;; Local Variables:
;; no-byte-compile: t
;; End:
