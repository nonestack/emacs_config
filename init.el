

(setq make-backup-files nil) ;close auto backup

(set-face-attribute 'default nil
		    :font "DejaVu Sans Mono"
		    :height 180) ; unit = 0.1pt, 120 = 12pt


(global-set-key (kbd "C-x C-b") 'ibuffer) ; change buffer-list to ibuffer

(global-display-line-numbers-mode) ; display line number

(global-set-key (kbd "<f1>") (lambda ()
                               (interactive)
                               (if (get-buffer "*dired*")
                                   (kill-buffer "*dired*")
                                 (dired default-directory))))

(setq dired-use-ls-dired nil)
(setq dired-listing-switches "-aBhl --group-directories-first")

(add-hook 'dired-mode-hook (lambda ()
                             (define-key dired-mode-map "q" 'kill-current-buffer)))

