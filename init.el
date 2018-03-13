;; package.el 相關設定
(require 'package)
(package-initialize)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;;magit
(global-set-key (kbd "C-x g") 'magit-status)
;;;;;;;;基本設定;;;;;;;

;;取消自動備份
(setq make-backup-files nil) ; stop creating backup~ files


;;smooth scrolling
(setq scroll-step            1
      scroll-conservatively  10000)


;;buffer 管理器
(require 'ibuffer)
(global-set-key (kbd "C-x C-b") 'ibuffer)


;;分割視窗操作
(require 'golden-ratio)
(golden-ratio-mode 1)

(global-set-key (kbd "M-S") 'windmove-up)
(global-set-key (kbd "M-X") 'windmove-down)
(global-set-key (kbd "M-C") 'windmove-right)
(global-set-key (kbd "M-Z") 'windmove-left)

(global-set-key (kbd "<f11>") (lambda () (interactive) (other-frame 1)))
(global-set-key (kbd "<f12>") (lambda () (interactive) (other-frame 1)))


;;顏色主題設定
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'zenburn t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("a56cc18045d90be8f770ae409fc86274f8e5de2999a16b604ff84f8015e8d1e5" "3b36631f95ebfd9ec35f382249ad861f3b3d51f8bed4882184ec8745deaada28" default)))
 '(org-agenda-files (quote ("~/Desktop/todo.org")))
 '(package-selected-packages
   (quote
    (magit go-mode rainbow-delimiters js2-mode rjsx-mode auto-complete golden-ratio))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;;;;;;;program;;;;;;;;;;;;

;;設定c語言的縮排為4個空白
(setq c-default-style "linux"
      c-basic-offset 4)

;;;;;;;/program;;;;;;;;;;;;

;;;;;;;org;;;;;;;;;;;;;;;;;

;;load module for org to export to markdown
(eval-after-load "org"
  '(require 'ox-md nil t))

;;;;;;;/org;;;;;;;;;;;;;;;;;

;;;;;;;rc-config;;;;;;;;;;;;
(add-to-list 'load-path "~/.emacs.d/rc")
(require 'rc-open-todo)
;;;;;;/rc-config;;;;;;;;;;;;
