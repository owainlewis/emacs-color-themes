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

(unless (>= 24 emacs-major-version)
  (error "requires Emacs 24 or later."))

(deftheme junio "A vivid theme like chocolates")

(let ((chocobi-background     "#111010")
      (chocobi-foreground     "#D8D8D3")
      (chocobi-comment-slate  "#4F3F3F")
      (chocobi-black          "#000000")
      (chocobi-constant       "#6F8FCC")
      (chocobi-mid-gray       "#555555")
      (chocobi-light-gray     "#BCBCBC")
      (chocobi-type           "#EF5C5F")
      (chocobi-green          "#8fbfdc")
      (chocobi-cursor         "#F0D0A0")
      (chocobi-dark-slate     "#403D3D")
      (chocobi-key            "#FFB070")
      (chocobi-func           "#8AAFFA")
      (chocobi-yellow         "#E6DB74")
      (chocobi-string         "#A6AB04")
      (chocobi-sky-blue       "#A197BF")
      (chocobi-mode           "#A1BAA1")
      (chocobi-mode-back      "#1A1A1A")
      (chocobi-warn-red       "#EE0000"))
  (custom-theme-set-faces
   'chocobi

   ;; ----------------- Frame stuff --------------------
   `(default ((t (:background ,chocobi-background :foreground ,chocobi-foreground))))
   `(cursor  ((t (:background ,chocobi-cursor))))
   `(hl-line ((t (:background ,chocobi-black))))
   `(mode-line-inactive ((t (:box nil :foreground ,chocobi-mid-gray :background ,chocobi-black))))
   `(mode-line ((t (:box nil :bold t :foreground ,chocobi-mode :background ,chocobi-mode-back))))
   `(fringe ((t (:background ,chocobi-background))))
   ;; Highlight region color
   `(region ((t (:foreground ,chocobi-yellow :background ,chocobi-dark-slate))))
   ;; Dir-ed search prompt
   `(minibuffer-prompt ((default (:foreground ,chocobi-foreground))))

   ;; ---------------- Code Highlighting ---------------
   ;; Builtins
   `(font-lock-builtin-face ((t (:foreground ,chocobi-green))))
   ;; Constants
   `(font-lock-constant-face ((t (:foreground ,chocobi-constant))))
   ;; Comments
   `(font-lock-comment-face ((t (:foreground ,chocobi-comment-slate))))
   ;; Function names
   `(font-lock-function-name-face ((t (:foreground ,chocobi-func))))
   ;; Keywords
   `(font-lock-keyword-face ((t (:foreground ,chocobi-key))))
   ;; Strings
   `(font-lock-string-face ((t (:foreground ,chocobi-string))))
   ;; Variables
   `(font-lock-variable-name-face ((t (:foreground ,chocobi-sky-blue))))
   `(font-lock-type-face ((t (:foreground ,chocobi-type))))
   `(font-lock-warning-face ((t (:foreground ,chocobi-warn-red :background ,chocobi-light-gray :bold t))))

   ;; ---------------- Package Specific Stuff -----------
   ;; Powerline
   `(powerline-active1 ((t (:background ,chocobi-yellow :foreground ,chocobi-background))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name)))
  (when (not window-system)
    (custom-set-faces '(default ((t (:background nil)))))))

(provide-theme 'chocobi)

;; Local Variables:
;; no-byte-compile: t
;; End:
