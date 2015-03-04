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

;; *****************************************************************************************
;;
;; Granger: Color theme based on light table
;;
;; *****************************************************************************************

(unless (>= emacs-major-version 24)
  (error "requires Emacs 24 or later."))

(deftheme granger "Light table theme for Emacs")

  (custom-theme-set-variables
    'granger
    '(linum-format " %7i "))

  (let ((background "#111013")
        (selection  "#11253A"))

  (custom-theme-set-faces
   'granger

;; Default colors
;; *****************************************************************************************

   `(default                          ((t (:foreground "#ABAEB3" :background ,background))))
   `(region                           ((t (:background ,selection                       ))))
   `(cursor                           ((t (:background "#ffffff"                        ))))
   `(fringe                           ((t (:background "#2f2f2f"   :foreground "#ffffff"))))
   `(linum                            ((t (:background ,background :foreground "#2f2f2f"))))
   `(minibuffer-prompt                ((t (:foreground "#9489C4"            :weight bold))))
   `(minibuffer-message               ((t (:foreground "#ffffff"                        ))))
   `(mode-line                        ((t (:foreground "#FFFFFF" :background "#484879"  ))))
   `(mode-line-inactive               ((t (:foreground "#777777" :background "#303030"  ))))

;; Font lock faces
;; *****************************************************************************************
 
   `(font-lock-keyword-face           ((t (:foreground "#3ca380"))))
   `(font-lock-type-face              ((t (:foreground "#484879"))))
   `(font-lock-constant-face          ((t (:foreground "#3F5C70"))))
   `(font-lock-variable-name-face     ((t (:foreground "#547B96"))))
   `(font-lock-builtin-face           ((t (:foreground "#6767AE"))))
   `(font-lock-string-face            ((t (:foreground "#699ABC"))))
   `(font-lock-comment-face           ((t (:foreground "#496b83"))))
   `(font-lock-comment-delimiter-face ((t (:foreground "#666688"))))
 
   `(font-lock-function-name-face     ((t (:foreground "#3ca380"))))
   `(font-lock-doc-string-face        ((t (:foreground "#496B83")))))

;; Helm
;; *****************************************************************************************

  `(helm-selection ((t (:background selection :underline nil))))
  `(helm-selection-line ((t (:background selection))))

   )

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

;; *****************************************************************************************

(provide-theme 'granger)

;; Local Variables:
;; no-byte-compile: t
;; End:
