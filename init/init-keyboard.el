;; fix m-up/m-down
(define-key global-map "\e[1;9A" [M-up])
(define-key global-map "\e[1;9B" [M-down])

;; go to specified line
(define-key global-map (kbd "C-c j") 'goto-line)

;; cmd+left/right arrow
(define-key global-map (kbd "M-[ H") 'beginning-of-line)
(define-key global-map (kbd "M-[ F") 'end-of-line)

;; cmd+left/right arrow in cocoa
(define-key global-map (kbd "s-<left>") 'beginning-of-line)
(define-key global-map (kbd "s-<right>") 'end-of-line)

;; jumping between windows
(define-key global-map (kbd "C-<up>") 'windmove-up)
(define-key global-map (kbd "C-<down>") 'windmove-down)
(define-key global-map (kbd "C-<left>") 'windmove-left)
(define-key global-map (kbd "C-<right>") 'windmove-right)

(define-key global-map (kbd "C-c C-c") 'comment-or-uncomment-region)

;; fix right alt on OS X
(when (eq system-type 'darwin)
  (setq mac-right-option-modifier 'none))

(provide 'init-keyboard)
