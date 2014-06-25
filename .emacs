(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(current-language-environment "Chinese-GB18030")
 '(custom-safe-themes (quote ("9fd20670758db15cc4d0b4442a74543888d2e445646b25f2755c65dcd6f1504b" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Courier New" :foundry "outline" :slant normal :weight normal :height 120 :width normal)))))
 (set-fontset-font "fontset-default"
 'gb18030 '("Microsoft YaHei" . "unicode-bmp"))
;; set color theme
(require 'color-theme)
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
;;设置home路径
(setenv "HOME" "E:/programming tool/emacs-24.3")
(setenv "PATH" "E:/programming tool/emacs-24.3")
;;set the default file path
(setq default-directory "~/")
(add-to-list 'load-path "~/site-lisp")
;;显示行号
(global-linum-mode t)
;;不生成临时文件
(setq-default make-backup-files nil)
;;emacs 改变光标形状
;;========================================

;; 设置光标为竖线 
(setq-default cursor-type 'bar)
(put 'upcase-region 'disabled nil)
;;org-mode setting
(setq org-startup-indented t)
