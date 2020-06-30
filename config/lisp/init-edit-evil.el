(use-package evil
  :ensure t
  :hook (after-init . evil-mode)
  :config
  (setcdr evil-insert-state-map nil)
  :bind (:map evil-motion-state-map
              ("C-u" . scroll-down-command)
              :map evil-insert-state-map
              ([escape] . evil-normal-state)))


(use-package evil-leader
             :ensure t
             :preface
             (setq evil-normal-state-cursor '("DarkGoldenrod2" box)
                   evil-emacs-state-cursor  '("SkyBlue2" box)
                   evil-insert-state-cursor '("chartreuse3" (bar . 2))
                   evil-visual-state-cursor '("gray" (hbar . 2)))
  :config
  (global-evil-leader-mode)
  (evil-leader/set-leader "<SPC>"))


(use-package use-package-chords
  :ensure t
  :config
  (key-chord-mode 1)
  (setq-default key-chord-two-keys-delay 0.5)
  (key-chord-define evil-insert-state-map ",," 'evil-normal-state))


(use-package evil-surround
  :ensure t
  :config
  (global-evil-surround-mode 1))


(provide 'init-edit-evil)
