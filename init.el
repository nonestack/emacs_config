

(setq make-backup-files nil) ;close auto backup

(set-face-attribute 'default nil
		    :font "DejaVu Sans Mono"
		    :height 180) ; unit = 0.1pt, 120 = 12pt


(global-set-key (kbd "C-x C-b") 'ibuffer) ; change buffer-list to ibuffer

(global-display-line-numbers-mode) ; display line number

(add-to-list 'load-path "~/.emacs.d/conf")
(require 'test)

(message "list = %s" load-path)
