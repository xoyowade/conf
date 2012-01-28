;;; my-color-theme.el ---

(provide 'my-color-theme)

;; color-theme settings
(require 'color-theme)

(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (if (< (display-color-cells) 20)
	 (color-theme-tty-dark)
      (color-theme-billw))
))

;; font
(set-default-font "Mono-14")
(dolist (charset '(kana han symbol cjk-misc bopomofo))
      (set-fontset-font (frame-parameter nil 'font)
                        charset
                        "Hiragino Sans GB-18"))

;;; my-color-theme.el ends here
