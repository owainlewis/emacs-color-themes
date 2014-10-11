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
;; Ritchie: A light color theme, named after Dennis Ritchie, creator
;; of the C language, co-creator of the Unix OS, among other things.
;;
;; ----------------------------

;;; Code:

(unless (>= emacs-major-version 24)
  (error "requires Emacs 24 or later."))

(deftheme ritchie "Uncertain amount of shades of blue.")

(defvar ritchie-colours-alist
  nil
  "Colours for the Ritchie theme")

(setq ritchie-colours-alist
      '((the-colour . "#0087af")
        (dark-cyan . "#008B8B")
        (white . "#ffffff")
        (dark-red . "#8B0000")
        (powder-blue . "#B0E0E6")
        (black . "#343434")
        (light-cyan . "#B0E0E6")
        (dodger-blue . "#104E8B")
        (royal-blue . "#4169E1")
        (dark-slate-blue . "#483D8B")
        (gainsboro . "#DCDCDC")
        (medium-blue . "#0000CD")))

(defun ritchie-colour (name)
  "Shortcut to get a colour for ``ritchie-colours-alist'' by NAME."
  (cdr (assoc name ritchie-colours-alist)))

(let* ((*background*         (ritchie-colour 'white))
       (*normal*             (ritchie-colour 'black))
       (*comments*           (ritchie-colour 'dodger-blue))
       (*constant*           (ritchie-colour 'medium-blue))
       (*current-line*       (ritchie-colour 'powder-blue))
       (*current-line-fg*    *normal*)
       (*cursor-underscore*  (ritchie-colour 'black))
       (*keywords*           (ritchie-colour 'dark-slate-blue))
       (*line-number*        *background*)
       (*line-number-fg*     (ritchie-colour 'gainsboro))
       (*method-declaration* *keywords*)
       (*mode-line-bg*       (ritchie-colour 'dark-cyan))
       (*mode-line-fg*       *background*)
       (*mode-inactive-bg*   (ritchie-colour 'light-cyan))
       (*mode-inactive-fg*   *normal*)
       (*number*             *normal*)
       (*operators*          *normal*)
       (*warning*            "#3b5998")
       (*regexp*             "#E9C")
       (*string*             *normal*)
       (*variable*           *method-declaration*)
       (*visual-selection*    (ritchie-colour 'the-colour))
       (*visual-selection-fg* *background*)
       (*header-line-bg*     *visual-selection*))

  (custom-theme-set-faces
   'ritchie

   `(bold ((t (:bold t))))
   `(button ((t (:foreground, *keywords* :underline t))))
   `(default ((t (:background, *background* :foreground, *normal*))))
   ;; Colour of header lines in Proced, info, Buffer list etc...
   `(header-line ((t (:background, *header-line-bg* :foreground, *background*))))
   `(highlight ((t (:background, *current-line* :foreground, *current-line-fg*))))
   `(highlight-face ((t (:background, *current-line*))))
   `(hl-line ((t (:background, *current-line* :underline nil
                               :foreground ,*current-line-fg*))))
   `(info-xref ((t (:foreground, *keywords* :underline t))))
   `(region ((t (:background, *visual-selection* :foreground ,*visual-selection-fg*))))
   `(underline ((nil (:underline t))))

   ;; font-lock
   `(font-lock-builtin-face ((t (:foreground, *operators*))))
   `(font-lock-comment-delimiter-face ((t (:foreground, *comments*))))
   `(font-lock-comment-face ((t (:foreground, *comments*))))
   `(font-lock-constant-face ((t (:foreground, *constant*))))
   `(font-lock-doc-face ((t (:foreground, *string*))))
   `(font-lock-doc-string-face ((t (:foreground, *string*))))
   `(font-lock-function-name-face ((t (:foreground, *method-declaration*))))
   `(font-lock-keyword-face ((t (:foreground, *keywords*))))
   `(font-lock-negation-char-face ((t (:foreground, *warning*))))
   `(font-lock-number-face ((t (:foreground, *number*))))
   `(font-lock-preprocessor-face ((t (:foreground, *keywords*))))
   `(font-lock-reference-face ((t (:foreground, *constant*))))
   `(font-lock-regexp-grouping-backslash ((t (:foreground, *regexp*))))
   `(font-lock-regexp-grouping-construct ((t (:foreground, *regexp*))))
   `(font-lock-string-face ((t (:foreground, *string*))))
   `(font-lock-type-face ((t (:foreground, *operators*))))
   `(font-lock-variable-name-face ((t (:foreground, *variable*))))
   `(font-lock-warning-face ((t (:foreground, *warning*))))

   ;; GUI
   `(fringe ((t (:background, *background*))))
   `(linum ((t (:background, *line-number* :foreground ,*line-number-fg*))))
   `(minibuffer-prompt ((t (:foreground, *variable*))))
   `(mode-line ((t (:background, *mode-line-bg* :foreground, *mode-line-fg* :box nil))))
   `(mode-line-inactive ((t (:background, *mode-inactive-bg*
                                          :foreground, *mode-inactive-fg* :box nil))))
   `(cursor ((t (:background, *cursor-underscore*))))
   `(text-cursor ((t (:background, *cursor-underscore*))))
   `(vertical-border ((t (:foreground, *background*)))) ;; between splits

   ;; show-paren
   `(show-paren-mismatch ((t (:background, *warning* :foreground, *normal* :weight bold))))
   `(show-paren-match ((t (:background, *keywords* :foreground, *normal* :weight bold))))

   ;; search
   `(isearch ((t (:background, *header-line-bg* :foreground, *background*))))
   `(isearch-fail ((t (:background, *warning*))))
   `(lazy-highlight ((t (:background, *operators* :foreground, *visual-selection*))))

   ))

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'ritchie)

;; Local Variables:
;; no-byte-compile: t
;; End:


