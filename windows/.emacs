(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes (quote (wheatgrass))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
'(default ((t (:family "Ubuntu" :foundry "unknown" :slant normal :weight normal :height 203 :width normal)))))
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
(set-default-font " -outline-Roboto-normal-normal-normal-*-19-*-*-*-p-*-iso8859-1")

;;set windows numbering
(add-to-list 'load-path "~/.emacs.d/")
 (require 'window-numbering)
 (window-numbering-mode 1)

;;set company 
(add-to-list 'load-path "/home/qincong/.emacs.d/elpa/company-0.8.12")
(autoload 'company-mode "company" nil t)
(require 'company)

(dolist (hook (list

               'emacs-lisp-mode-hook

               'lisp-mode-hook

               'lisp-interaction-mode-hook

               'scheme-mode-hook

               'c-mode-common-hook

               'python-mode-hook

               'haskell-mode-hook

               'asm-mode-hook

	       'c++-mode-hook 

               'emms-tag-editor-mode-hook

               'sh-mode-hook))

  (add-hook hook 'company-mode))
