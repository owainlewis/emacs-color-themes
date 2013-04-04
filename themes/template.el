;; -------------------------------------
;;
;; Custom Theme M-x customize-face
;;
;; -------------------------------------
;; Color Guide
;; -------------------------------------
;;
;; background: %{background}
;; foreground: %{foreground}
;; border:     %{border}
;; cursor:     %{cursor}
;; mouse:      %{mouse}
;; fringe:     %{fringe}
;; mode:       %{mode}
;; region:     %{region}
;; builtin:    %{builtin}
;; comment:    %{comment}
;; function:   %{function}
;; keyword:    %{keyword}
;; string:     %{string}
;; class:      %{class}
;; constants:  %{constant}
;; variable:   %{variable}
;; prompt:     %{prompt}
;;
;; -------------------------------------

(defun your-config-name-here ()
  (interactive)
  (color-theme-install
   '(your-config-name-here
      ((background-color . "%{background}")
      (background-mode . dark)
      (border-color . "%{border}")
      (cursor-color . "%{cursor}")
      (foreground-color . "%{foreground}")
      (mouse-color . "%{mouse}"))
     ;; Frame borders
     (fringe ((t (:background "%{border}"))))
     ;; The bottom active window color
     (mode-line ((t (:foreground "%{foreground}" :background "%{mode}"))))
     ;; Selection
     (region ((t (:background "%{region}"))))
     ;; Built in language constructs
     (font-lock-builtin-face ((t (:foreground "%{builtin}"))))
     ;; Comments
     (font-lock-comment-face ((t (:foreground "%{comment}"))))
     ;; Functions
     (font-lock-function-name-face ((t (:foreground "%{function}"))))
     ;; Keywords
     (font-lock-keyword-face ((t (:foreground "%{keyword}"))))
     ;; Strings
     (font-lock-string-face ((t (:foreground "%{string}"))))
     ;; Classes
     (font-lock-type-face ((t (:foreground "%{class}"))))
     ;; Constants
     (font-lock-constant-face ((t (:foreground "%{constant}"))))
     ;; Variables
     (font-lock-variable-name-face ((t (:foreground "%{variable}"))))
     ;; Bottom buffer prompt (i.e M-x color)
     (minibuffer-prompt ((t (:foreground "%{prompt}" :bold t))))

     (font-lock-warning-face ((t (:foreground "red" :bold t)))))))

;; -------------------------------------

(provide 'your-config-name-here)

;; -------------------------------------

