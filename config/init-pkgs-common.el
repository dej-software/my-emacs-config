;; 一些无特殊作用的公共包

(use-package try
  :ensure t)

(use-package which-key
  :ensure t
  :config
  (which-key-mode))

(provide 'init-pkgs-common)
