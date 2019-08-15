
(add-to-list 'load-path "~/.emacs.d/config")

(require 'init-generic)
(require 'init-packages)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-confirm-babel-evaluate nil)
 '(org-default-notes-file (concat org-directory "/notes.org"))
 '(org-directory "~/work/orgfiles")
 '(org-export-html-postamble nil)
 '(org-hide-leading-stars t)
 '(org-src-fontify-natively t)
 '(org-startup-folded (quote overview))
 '(org-startup-indented t)
 '(package-selected-packages (quote (use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
