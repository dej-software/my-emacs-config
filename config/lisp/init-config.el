;; 加速配置。
;; (require 'init-accelerate)

(let (
      ;; 加载的时候临时增大`gc-cons-threshold'以加速启动速度。
      (gc-cons-threshold most-positive-fixnum)
      (gc-cons-percentage 0.6)
      ;; 清空避免加载远程文件的时候分析文件。
      (file-name-handler-alist nil))

  ;;(with-temp-message ""                 ;抹掉插件启动的输出
    ;;(require 'benchmark-init-modes)
    ;;(require 'benchmark-init)
    ;;(benchmark-init/activate)

 __   ____   ___             
 \ \ / /\ \ / (_)            
  \ V /  \ V / _  __ _  ___  
   > <    > < | |/ _` |/ _ \ 
  / . \  / . \| | (_| | (_) |
 /_/ \_\/_/ \_\_|\__,_|\___/ 
                             
                             

    ;;(require 'init-startup)

    (require 'init-generic)
    (require 'init-packages)
    (require 'init-common)

    ;;(require 'init-ui-font)
    (require 'init-ui-theme)
    
    (require 'init-edit-evil)
    (require 'init-edit-help)

    (require 'lazy-load)

    ;;(require 'init-mode)
    ;;(require 'init-dired)

    (require 'init-performance)

    (require 'init-key)

    ;; 可以延后加载的
    (run-with-idle-timer
     1 nil
     #'(lambda ()
        
        ;; 编程
        (require 'init-yasnippet)
        (require 'init-company-mode)
        (require 'init-nox)
        (require 'init-highlight-indent-guides)

        ;; 项目
        (require 'init-treemacs)

        ;; org
        (require 'init-doc-org)
        
         ;;(require 'init-smooth-scrolling)

         ;;(require 'init-c)
         ;;(require 'init-flycheck)        
         ;;(require 'init-org)

         ;;(require 'init-idle)

         ;;(require 'init-auto-sudoedit)
         
         
         ;;(require 'init-rime)
         ;;(require 'init-eaf)

         ;;(require 'init-sdcv)           ; Don't remove this line

         ;; Restore session at last.
         ;;(require 'init-session)
         ;;(emacs-session-restore)

         ;;(server-start)            ;为emacsclient准备使用场景，比如git
         )))

(provide 'init-config)
