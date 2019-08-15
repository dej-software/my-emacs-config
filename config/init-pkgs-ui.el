(use-package all-the-icons 
  :ensure t
  :defer 0.5)

(use-package doom-themes)

(use-package doom-modeline
  :ensure t
  :hook (after-init . doom-modeline-mode))

;;(require 'doom-modeline)
;;(doom-modeline-init)

(require 'doom-themes)

;; Global settings (defaults)
(setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
      doom-themes-enable-italic t) ; if nil, italics is universally disabled

;; Load the theme (doom-one, doom-molokai, etc); keep in mind that each theme
;; may have their own settings.
(load-theme 'doom-one t)

(provide 'init-pkgs-ui)
