;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;; ---------------------------
;;
;; Dorsey: A dark grunge color theme
;;
;; ----------------------------

(unless (>= 24 emacs-major-version)
  (error "requires Emacs 24 or later."))

(deftheme dorsey
  "A dark grunge color theme")
  
(custom-theme-set-variables
  'dorsey
  '(linum-format " %7i "))

(let ((dorsey-background        "#252727")
      (dorsey-darker-background "#212121")
      (dorsey-rich-black        "#161A1F")
      (dorsey-mid-gray          "#666666")
      (dorsey-light-gray        "#999999")
      (dorsey-foreground        "#FFFFFF")
      (dorsey-light-blue        "#9FB3C2")
      (dorsey-bluegray          "#4F5A63")
      (dorsey-blue-green        "#8AB8A2")
      (dorsey-yellow            "#C7AF3F")
      (dorsey-light-yellow      "#FFE792")
      (dorsey-yellow-white      "#FAFFDB")
      (*mode-line-bg*           "#CCCCCC")
      (*mode-inactive-bg*       "#222")
      (*mode-line-fg*           "#333333")
      (*mode-inactive-fg*       "#FFF"))
  (custom-theme-set-faces
   'dorsey

   ;; ----------------- Frame stuff --------------------
   `(default ((t (:background ,dorsey-darker-background :foreground ,dorsey-foreground))))
   `(cursor  ((t (:background ,dorsey-foreground))))
   `(hl-line ((t (:background ,dorsey-darker-background))))
   `(mode-line ((t (:background, *mode-line-bg* :foreground, *mode-line-fg*))))
   `(mode-line-inactive ((t (:background, *mode-inactive-bg* :foreground, *mode-inactive-fg*))))
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
