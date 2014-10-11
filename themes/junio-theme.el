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
;; Junio: A vivid theme like chocolates
;; 
;; ----------------------------

(unless (>= emacs-major-version 24)
  (error "requires Emacs 24 or later."))

(deftheme junio "A vivid theme like chocolates")

(let ((junio-background     "#111010")
      (junio-foreground     "#D8D8D3")
      (junio-comment-slate  "#76AB55")
      (junio-black          "#000000")
      (junio-constant       "#6F8FCC")
      (junio-mid-gray       "#555555")
      (junio-light-gray     "#BCBCBC")
      (junio-type           "#EF5C5F")
      (junio-green          "#8fbfdc")
      (junio-cursor         "#F0D0A0")
      (junio-dark-slate     "#403D3D")
      (junio-key            "#FFB070")
      (junio-func           "#8AAFFA")
      (junio-yellow         "#E6DB74")
      (junio-string         "#A6AB04")
      (junio-sky-blue       "#A197BF")
      (junio-mode           "#A1BAA1")
      (junio-mode-back      "#1A1A1A")
      (junio-warn-red       "#EE0000"))
  (custom-theme-set-faces
   'junio

   ;; ----------------- Frame stuff --------------------
   `(default ((t (:background ,junio-background :foreground ,junio-foreground))))
   `(cursor  ((t (:background ,junio-cursor))))
   `(hl-line ((t (:background ,junio-black))))
   `(mode-line-inactive ((t (:box nil :foreground ,junio-mid-gray :background ,junio-black))))
   `(mode-line ((t (:box nil :bold t :foreground ,junio-mode :background ,junio-mode-back))))
   `(fringe ((t (:background ,junio-background))))
   ;; Highlight region color
   `(region ((t (:foreground ,junio-yellow :background ,junio-dark-slate))))
   ;; Dir-ed search prompt
   `(minibuffer-prompt ((default (:foreground ,junio-foreground))))

   ;; ---------------- Code Highlighting ---------------
   ;; Builtins
   `(font-lock-builtin-face ((t (:foreground ,junio-green))))
   ;; Constants
   `(font-lock-constant-face ((t (:foreground ,junio-constant))))
   ;; Comments
   `(font-lock-comment-face ((t (:foreground ,junio-comment-slate))))
   ;; Function names
   `(font-lock-function-name-face ((t (:foreground ,junio-func))))
   ;; Keywords
   `(font-lock-keyword-face ((t (:foreground ,junio-key))))
   ;; Strings
   `(font-lock-string-face ((t (:foreground ,junio-string))))
   ;; Variables
   `(font-lock-variable-name-face ((t (:foreground ,junio-sky-blue))))
   `(font-lock-type-face ((t (:foreground ,junio-type))))
   `(font-lock-warning-face ((t (:foreground ,junio-warn-red :background ,junio-light-gray :bold t))))

   ;; ---------------- Package Specific Stuff -----------
   ;; Powerline
   `(powerline-active1 ((t (:background ,junio-yellow :foreground ,junio-background))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name)))
  (when (not window-system)
    (custom-set-faces '(default ((t (:background nil)))))))

(provide-theme 'junio)

;; Local Variables:
;; no-byte-compile: t
;; End:
