(autoload 'php-mode "/home/qincong/.emacs.d/php-mode" "Major mode for editing php code." t)
(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.inc$" . php-mode))

(fset 'qwerb
   [return ?< ?% ?  ?  ?% ?>])
(fset 'qwnerb
   [return ?< ?% ?= ?  ?  ?% ?>])
;;模拟的粘贴操作
(fset 'qwpaste
   "\C-y")

;;禁止自动备份
(setq make-backup-files nil)

;;ruby嵌入用
(global-set-key (kbd "C-x a") 'erb)
(fset 'erb
   [ ?< ?> left ?% ?% left ?  left])

;;当文件被别的程序修改时,load新的
(global-auto-revert-mode)

(global-set-key (kbd "RET") 'newline-and-indent)

;;去掉欢迎界面
(setq inhibit-startup-message t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(company-abort-manual-when-too-short nil)
 '(company-auto-complete nil)
 '(custom-enabled-themes (quote (wheatgrass)))
 '(tool-bar-mode nil)
 '(tooltip-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Ubuntu" :foundry "unknown" :slant normal :weight normal :height 173 :width normal)))))
(global-linum-mode t)

;;设置f5前往指定行
(global-set-key [f5] 'goto-line)

;;实现全屏效果，快捷键位f11
(global-set-key [f11] 'my-fullscreen)
(defun my-fullscreen()
(interactive)
(x-send-client-message
nil 0 nil "_NET_WM_STATE" 32
'(2 "_NET_WM_STATE_FULLSCREEN" 0))
)

;;设置字体
(set-default-font "-unknown-Ubuntu Mono-normal-normal-normal-*-19-*-*-*-m-0-iso10646-1")

;;set windows numbering
(add-to-list 'load-path "~/.emacs.d/")
 (require 'window-numbering)
 (window-numbering-mode 1)

;;set company 
(add-to-list 'load-path "/home/qincong/.emacs.d/elpa/company-0.8.12")
(autoload 'company-mode "company" nil t)
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)


;;去掉烦人的警告铃声
(setq visible-bell nil)

;;当指针到一个括号时，自动显示所匹配的另一个括号
(show-paren-mode 1)

;;所有的问题用y/n方式，不用yes/no方式。有点懒，只想输入一个字母
(fset 'yes-or-no-p 'y-or-n-p)

;;markdown插件
(autoload 'markdown-mode "markdown-mode"
    "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))


;;解决python下company无法使用的bug
(add-hook 'python-mode-hook
                 '(lambda ()
                   (setq-local completion-at-point-functions nil)))
