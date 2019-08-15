;; 一般性配置
(tool-bar-mode -1)      ;; 禁用工具栏
(menu-bar-mode -1)      ;; 禁用菜单栏
(scroll-bar-mode -1)    ;; 禁用滚动条

(fset 'yes-or-no-p 'y-or-n-p)           ;; 以 y/n 代表 yes/no
(blink-cursor-mode -1)                  ;; 指针不闪动
(transient-mark-mode 1)                 ;; 标记高亮
(global-subword-mode 1)                 ;; Word移动支持 FooBar 的格式

(setq use-dialog-box nil)               ;; never pop dialog
(setq inhibit-startup-screen t)         ;; inhibit start screen
(setq initial-scratch-message "")       ;; 关闭启动空白buffer, 这个buffer会干扰session恢复
(setq-default comment-style 'indent)    ;; 设定自动缩进的注释风格
(setq ring-bell-function 'ignore)       ;; 关闭烦人的出错时的提示声
(setq default-major-mode 'text-mode)    ;; 设置默认地主模式为 text 模式
(setq mouse-yank-at-point t)            ;; 粘贴于光标处,而不是鼠标指针处
(setq x-select-enable-clipboard t)      ;; 支持emacs和外部程序的粘贴
(setq split-width-threshold nil)        ;; 分屏的时候使用上下分屏
(setq inhibit-compacting-font-caches t) ;; 使用字体缓存，避免卡顿

(setq make-backup-files nil)

;;(add-hook 'find-file-hook 'highlight-parentheses-mode t) ;; 增强的括号高亮

(provide 'init-generic)
