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
;; Hickey: A dark color theme
;;
;; ----------------------------

(unless (>= emacs-major-version 24)
  (error "requires Emacs 24 or later."))

(deftheme hickey "A dark colour theme")

(let ((hickey-background     "#1D2021")
      (hickey-foreground     "#F8F8F2")
      (hickey-dark-gray      "#333333")
      (hickey-mid-gray       "#555555")
      (hickey-light-gray     "#666666")
      (hickey-lightest-gray  "#999999")
      (hickey-comment-slate  "#505C63")
      (hickey-orange         "#F38630")
      (hickey-light-slate    "#465459")
      (hickey-dark-slate     "#161A1F")
      (hickey-light-blue     "#A7DBD8")
      (hickey-strong-green   "#AEE239")
      (hickey-subtle-blue    "#A7DBD8")
      (hickey-dirty-white    "#F8F8F0")
      (hickey-lighter-orange "#FD971F"))

  (custom-theme-set-faces
   'hickey

   ;; ----------------- Frame stuff --------------------
   `(default ((t (:background ,hickey-background :foreground ,hickey-foreground))))
   `(cursor  ((t (:background ,hickey-lightest-gray))))
   `(hl-line ((t (:background ,hickey-light-gray))))
   `(modeline ((t (:foreground ,hickey-lightest-gray :background ,hickey-mid-gray))))
   `(mode-line-inactive ((t (:box nil :foreground ,hickey-light-gray :background ,hickey-dark-gray))))
   `(mode-line ((t (:box nil :foreground ,hickey-background :background ,hickey-light-blue))))
   `(fringe ((t (:background ,hickey-background))))
   ;; Highlight region color
   `(region ((t (:foreground ,hickey-light-slate :background ,hickey-dark-slate))))
   ;; Dir-ed search prompt
   `(minibuffer-prompt ((default (:foreground ,hickey-light-blue))))

   ;; ---------------- Code Highlighting ---------------
   ;; Builtins
   `(font-lock-builtin-face ((t (:foreground ,hickey-orange))))
   ;; Constants
   `(font-lock-constant-face ((t (:foreground ,hickey-strong-green))))
   ;; Comments
   `(font-lock-comment-face ((t (:foreground ,hickey-comment-slate))))
   ;; Function names
   `(font-lock-function-name-face ((t (:foreground ,hickey-strong-green))))
   ;; Keywords
   `(font-lock-keyword-face ((t (:foreground ,hickey-subtle-blue))))
   ;; Strings
   `(font-lock-string-face ((t (:foreground ,hickey-dirty-white))))
   ;; Variables
   `(font-lock-variable-name-face ((t (:foreground ,hickey-lighter-orange))))
   `(font-lock-type-face ((t (:foreground ,hickey-lightest-gray))))
   `(font-lock-warning-face ((t (:foreground ,hickey-lightest-gray :bold t))))

   ;; ---------------- Package Specific Stuff -----------
   ;; Powerline
   `(powerline-active1 ((t (:background ,hickey-dirty-white :foreground ,hickey-background))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name)))
  (when (not window-system)
    (custom-set-faces '(default ((t (:background nil)))))))

(provide-theme 'hickey)

;; Local Variables:
;; no-byte-compile: t
;; End:
