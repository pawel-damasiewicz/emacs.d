(use-package gitconfig-mode
  :ensure t
  :defer t)

(use-package gitignore-mode
  :ensure t
  :defer t)

(use-package magit
  :ensure t
  :defer t
  :bind(("C-x g" . magit-status)))

(use-package git-gutter
  :diminish git-gutter-mode
  :ensure t
  :defer t
  :commands git-gutter-mode
  :init
  (progn
    (add-hook 'prog-mode-hook 'git-gutter-mode))
  :config
  (progn
    (git-gutter:linum-setup)
    (setq git-gutter:update-interval 2)))

(provide 'init-git)
