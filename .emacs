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
;;====================================================================
;;emacs 改变光标形状
;;=====================================================================

;; 设置光标为竖线 
(setq-default cursor-type 'bar)
(put 'upcase-region 'disabled nil)
;;org-mode setting
(setq org-startup-indented t)
;;当指针到一个括号时，自动显示所匹配的另一个括号  
(show-paren-mode t)  
;;括号匹配时可以高亮显示另外一边的括号，但光标不会烦人的跳到另一个括号处  
(setq show-paren-style 'parenthesis) ;;好像也没太大作用


;;======================================================================
;;set the org-mode
;;======================================================================
(setq org-log-done 'time)
(setq org-log-done 'note)
;;当所有的子todo做完后，总的todo也标记为done
(defun org-summary-todo (n-done n-not-done)
  "Swith entry to DONE when all subentries are done, to TODO otherwise."
  (let (org-log-done org-log-states)   ; turn off logging.
    (org-todo (if (= n-not-done 0) "DONE" "TODO"))))

;;

(add-to-list 'load-path "~/.emacs.d")
;;set 自动完成auto-complete  2014.6.26
(add-to-list 'load-path "~/.emacs.d/auto-complete")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/auto-complete/ac-dict")
(ac-config-default)

