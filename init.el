;; init package manager
(require 'package)
(package-initialize)

(setq make-backup-files nil) ;close auto backup

(set-face-attribute 'default nil
		    :font "DejaVu Sans Mono"
		    :height 180) ; unit = 0.1pt, 120 = 12pt


(global-set-key (kbd "C-x C-b") 'ibuffer) ; change buffer-list to ibuffer

(global-display-line-numbers-mode) ; display line number

(add-to-list 'load-path "~/.emacs.d/conf")

(require 'test)


;; (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
;; (add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/") t)
;; (add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)

;; set tuna elpa source
(setq package-archives '(("gnu"    . "https://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("nongnu" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/nongnu/")
                         ("melpa"  . "https://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))

;; install use-package
(unless (package-installed-p 'use-package)
  ;; update local cache
  (package-refresh-contents)
  ;; install use-package 
  (package-install 'use-package))

(require 'use-package)
;; install package as needed
(setq use-package-always-ensure t)

;; text company
(use-package company
  ;; equal (add-hook 'after-init-hook #'global-company-mode)
  :hook (after-init . global-company-mode)
  :config
  ;; setq set multi-value like below
  (setq company-tooltip-align-annotations t ; right align
        company-tooltip-limit 20            ; prompt number
        company-show-numbers t              ; display number (use M-number to select special text)
        company-idle-delay .2               ; display after 0.2s
        company-minimum-prefix-length 1     ; company after input 1 char
        ))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(company)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
