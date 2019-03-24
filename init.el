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

;;auto-complete
(ac-config-default)

;;magit
(global-set-key (kbd "C-x g") 'magit-status)
;;;;;;;;基本設定;;;;;;;

;;括號配對標亮
(show-paren-mode 1)
(setq show-paren-delay 0)

;;括號自動完成
(electric-pair-mode 1)

;;取消自動備份
(setq make-backup-files nil) ; stop creating backup~ files


;;smooth scrolling
;;(setq scroll-step            1
;;      scroll-conservatively  10000)
(require 'smooth-scrolling)
(smooth-scrolling-mode 1)
(setq smooth-scroll-margin 5)

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

;;改方向鍵和字詞移動
(global-set-key (kbd "M-i") 'previous-line)
(global-set-key (kbd "M-k") 'next-line)
(global-set-key (kbd "M-j") 'left-char)
(global-set-key (kbd "M-l") 'right-char)
(global-set-key (kbd "M-I") 'backward-paragraph)
(global-set-key (kbd "M-K") 'forward-paragraph)
(global-set-key (kbd "M-J") 'left-word)
(global-set-key (kbd "M-L") 'right-word)
(global-set-key (kbd "C-o") 'recenter-top-bottom)

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
    ("151bde695af0b0e69c3846500f58d9a0ca8cb2d447da68d7fbf4154dcf818ebc" "93a0885d5f46d2aeac12bf6be1754faa7d5e28b27926b8aa812840fe7d0b7983" "d1b4990bd599f5e2186c3f75769a2c5334063e9e541e37514942c27975700370" "f0dc4ddca147f3c7b1c7397141b888562a48d9888f1595d69572db73be99a024" "6b2636879127bf6124ce541b1b2824800afc49c6ccd65439d6eb987dbf200c36" "e61752b5a3af12be08e99d076aedadd76052137560b7e684a8be2f8d2958edc3" "a12ec87ff9e72a9561314c7ae2c82a373e1b7c80d0fe15579e282080c8d5aef2" "0dd2666921bd4c651c7f8a724b3416e95228a13fca1aa27dc0022f4e023bf197" "a56cc18045d90be8f770ae409fc86274f8e5de2999a16b604ff84f8015e8d1e5" "3b36631f95ebfd9ec35f382249ad861f3b3d51f8bed4882184ec8745deaada28" default)))
 '(org-agenda-files (quote ("~/Desktop/todo.org")))
 '(package-selected-packages
   (quote
    (sr-speedbar material-theme smooth-scrolling magit go-mode rainbow-delimiters js2-mode rjsx-mode auto-complete golden-ratio))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;;;;;;;program;;;;;;;;;;;;

;;space istead of tab
(setq-default indent-tabs-mode nil)

;;設定c語言的縮排為4個空白
(setq c-default-style "linux"
      c-basic-offset 4)

;;js2-mode
(add-to-list 'auto-mode-alist '("\\.jsx?\\'" . js2-jsx-mode))
(setq-default js2-basic-offset 2)
(setq js-indent-level 2)

;;;;;;;/program;;;;;;;;;;;;

;;;;;;;org;;;;;;;;;;;;;;;;;

;;load module for org to export to markdown
(eval-after-load "org"
  '(require 'ox-md nil t))

;;;;;;;/org;;;;;;;;;;;;;;;;;

;;;;;;;rc-config;;;;;;;;;;;;
(add-to-list 'load-path "~/.emacs.d/rc")
;;(require 'rc-open-todo)
;;;;;;/rc-config;;;;;;;;;;;;
