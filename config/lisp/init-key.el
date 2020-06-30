;; evil-leader
(evil-leader/set-key
    "<SPC>" 'smex

    "//" 'org-sparse-tree
    "oo" 'org-export-dispatch
    "aa" 'org-agenda
    "cc" 'org-capture
    "oj" 'org-todo
    "ot" 'org-set-tags-command
    "os" 'org-schedule
    "od" 'org-deadline
    "op" 'org-priority
    "of" 'org-footnote-action
    "or" 'org-refile

    "ms" 'kmacro-start-macro
    "me" 'kmacro-end-macro
    "mx" 'kmacro-end-and-call-macro
    "mn" 'name-last-kbd-macro
    "mi" 'insert-kbd-macro

    "mmd" 'mc/delete-this-post

    "pw" 'save-and-publish-website
    "pf" 'save-and-publish-file
    "ps" 'save-and-publish-statics
    "pb" 'preview-current-buffer-in-browser
    "pd" 'delete-org-and-html
    "pD" 'just-delete-relative-html


    "bb" 'ido-switch-buffer
    "bj" 'ibuffer-sidebar-toggle-sidebar
    "bk" 'ido-kill-buffer

    "ff" 'ido-find-file
    "fi" 'open-init-file
    "fh" 'open-home-file
    "fw" 'open-wiki-file
    "fc" 'open-cactus-file
    "fn" 'open-notes-file
    "fo" 'org-open-at-point-and-delete-other-windows
    "fO" 'org-open-at-point
    "fd" 'delete-this-file
    "fr" 'rename-this-file-and-buffer
    "fe" 'recentf-open-files
    "fj" 'dired-sidebar-toggle-sidebar
    "fs" 'save-buffer
    "fa" 'save-some-buffers

    "gg" 'magit-status

    "hf" 'describe-function
    "hk" 'describe-key
    "hv" 'describe-variable
    "hp" 'describe-package

    "ii" 'org-toggle-inline-images

    "jj" 'org-cycle

    "ll" 'comment-line

    ;; "mj" 'list-bookmarks
    ;; "ms" 'bookmark-set

    "sa" 'mark-whole-buffer

    "ss" 'swiper
    "SS" 'sanityinc/swiper-at-point
    "sp" 'projectile-ripgrep
    "sf" 'isearch-forward-pinyin
    "sb" 'isearch-backward-pinyin

    "tt" 'toggle-truncate-lines
    "tw" 'toggle-frame-maximized
    "tf" 'toggle-frame-fullscreen

    "ww" 'switch-window
    "wo" 'switch-window-then-maximize
    "wr" 'split-window-right
    "wd" 'split-window-below
    "wk" 'delete-window
    "wh" 'winner-undo
    "wl" 'winner-redo

    "yy" 'youdao-dictionary-search-at-point+

    "qq" 'save-buffers-kill-terminal)

(defvar leader-key
  (string-trim (default-value 'evil-leader/leader) "[<]+" "[>]+"))

(with-eval-after-load 'which-key
  (let ((prefix-re (regexp-opt (list leader-key))))
    (cl-pushnew `((,(format "\\`%s a\\'" prefix-re))
                  nil . "apps")
                which-key-replacement-alist)
    (cl-pushnew `((,(format "\\`%s b\\'" prefix-re))
                  nil . "buffmark")
                which-key-replacement-alist)
    (cl-pushnew `((,(format "\\`%s f\\'" prefix-re))
                  nil . "files")
                which-key-replacement-alist)
    (cl-pushnew `((,(format "\\`%s o\\'" prefix-re))
                  nil . "open")
                which-key-replacement-alist)
    (cl-pushnew `((,(format "\\`%s p\\'" prefix-re))
                  nil . "project")
                which-key-replacement-alist))
  )

;;; ### Awesome-Pair ###
;;; --- 结构化编程
(lazy-load-unset-keys
 '("M-J" "M-r" "M-s" "M-;" "C-M-f" "C-M-b" "M-)")
 awesome-pair-mode-map)                 ;卸载按键
(defvar awesome-pair-key-alist nil)
(setq awesome-pair-key-alist
      '(
        ;; 移动
        ("M-n" . awesome-pair-jump-left)
        ("M-p" . awesome-pair-jump-right)
        ;; 符号插入
        ("%" . awesome-pair-match-paren)       ;括号跳转
        ("(" . awesome-pair-open-round)        ;智能 (
        ("[" . awesome-pair-open-bracket)      ;智能 [
        ("{" . awesome-pair-open-curly)        ;智能 {
        (")" . awesome-pair-close-round)       ;智能 )
        ("]" . awesome-pair-close-bracket)     ;智能 ]
        ("}" . awesome-pair-close-curly)       ;智能 }
        ("\"" . awesome-pair-double-quote)     ;智能 "
        ("=" . awesome-pair-equal)             ;智能 =
        ("SPC" . awesome-pair-space)           ;智能 Space
        ;; 删除
        ("M-o" . awesome-pair-backward-delete) ;向后删除
        ("C-d" . awesome-pair-forward-delete)  ;向前删除
        ("C-k" . awesome-pair-kill)            ;向前kill
        ;; 包围
        ("M-\"" . awesome-pair-wrap-double-quote) ;用 " " 包围对象, 或跳出字符串
        ("M-[" . awesome-pair-wrap-bracket)       ;用 [ ] 包围对象
        ("M-{" . awesome-pair-wrap-curly)         ;用 { } 包围对象
        ("M-(" . awesome-pair-wrap-round)         ;用 ( ) 包围对象
        ("M-)" . awesome-pair-unwrap)             ;去掉包围对象
        ;; 跳出并换行缩进
        ("M-:" . awesome-pair-jump-out-pair-and-newline) ;跳出括号并换行
        ))
(lazy-load-set-keys awesome-pair-key-alist awesome-pair-mode-map)

(lazy-load-global-keys
 '(
   ("C-`" . snails)
   ("M-`" . snails-search-point)
   )
 "snails")

(lazy-load-global-keys
 '(
   ("C-7" . xref-pop-marker-stack)
   ("C-8" . xref-find-definitions)
   ("C-9" . xref-find-definitions-other-window)
   ("M-k" . xref-find-references)
   ("M-," . nox-rename)
   ("M-." . nox-show-doc)
   )
 "init-nox.el")

(provide 'init-key)
