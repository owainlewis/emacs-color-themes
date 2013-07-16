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

;; ------------------------------------------------------
;;
;; Wilson: A theme based upon a dirty spitfire
;;
;; -------------------------------------------------------

(unless (>= 24 emacs-major-version)
  (error "requires Emacs 24 or later."))

(deftheme wilson
  "A theme based upon a dirty spitfire")

(let ((wilson-oilstained-eggshell   "#6C6B59")
      (wilson-flying-boots          "#44443C")
      (wilson-darker-flying-boots   "#3C3C35")
      (wilson-spring-grass          "#9BA657")
      (wilson-stained-white         "#BEBFB7")
      (wilson-darker-stained-white  "#A9AAA3")
      (wilson-gray                  "#84857E")
      (wilson-darker-gray           "gray30")
      (wilson-dark-gray             "gray25")
      (wilson-light-gray            "gray20")
      (wilson-lighter-gray          "gray12")
      (wilson-stained-orange        "#B97E56")
      (wilson-darker-stained-orange "#A56F4B")
      (wilson-stained-yellow        "#CFB980")
      (wilson-darker-stained-yellow "#B9A572"))
  (custom-theme-set-faces
   'wilson

   ;; ----------------- Frame stuff --------------------
   `(default ((t (:background ,wilson-darker-flying-boots :foreground ,wilson-stained-white))))
   `(cursor  ((t (:background ,wilson-stained-white))))
   `(hl-line ((t (:background ,wilson-flying-boots))))
   `(modeline ((t (:background ,wilson-stained-yellow :foreground ,wilson-flying-boots))))
   `(mode-line-inactive ((t (:box nil :background ,wilson-light-gray :foreground ,wilson-stained-yellow))))
   `(mode-line ((t (:box nil :foreground ,wilson-flying-boots :background ,wilson-stained-yellow))))
   `(fringe ((t (:background ,wilson-darker-flying-boots))))
   ;; Dir-ed search prompt
   `(minibuffer-prompt ((default (:foreground ,wilson-stained-orange))))
   ;; Highlight region color
   `(region ((t (:foreground ,wilson-darker-stained-white :background ,wilson-flying-boots))))

   ;; ---------------- Code Highlighting ---------------
   ;; Builtin
   `(font-lock-builtin-face ((t (:foreground ,wilson-darker-stained-yellow))))
   ;; Constants
   `(font-lock-constant-face ((t (:foreground ,wilson-stained-orange))))
   ;; Comments
   `(font-lock-comment-face ((t (:foreground ,wilson-oilstained-eggshell))))
   ;; Function names
   `(font-lock-function-name-face ((t (:foreground ,wilson-stained-yellow))))
   ;; Keywords
   `(font-lock-keyword-face ((t (:foreground ,wilson-spring-grass))))
   ;; Strings
   `(font-lock-string-face ((t (:foreground ,wilson-gray))))
   ;; Variables
   `(font-lock-variable-name-face ((t (:foreground ,wilson-stained-yellow))))
   `(font-lock-type-face ((t (:foreground ,wilson-darker-stained-orange))))
   `(font-lock-warning-face ((t (:foreground ,wilson-darker-stained-orange :bold t))))

   ;; ---------------- Package Specific Stuff -----------
   ;; Powerline
   `(powerline-active1 ((t (:background ,wilson-dark-gray :foreground ,wilson-stained-orange))))
   `(powerline-active2 ((t (:background ,wilson-lighter-gray :foreground ,wilson-darker-stained-white))))
   `(powerline-inactive1 ((t (:background ,wilson-darker-gray :foreground ,wilson-stained-white))))
   `(powerline-inactive2 ((t (:background ,wilson-dark-gray :foreground ,wilson-darker-stained-white))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name)))
  (when (not window-system)
    (custom-set-faces '(default ((t (:background "nil")))))))

(provide-theme 'wilson)

;; Local Variables:
;; no-byte-compile: t
;; End:
