

(setq make-backup-files nil) ;close auto backup

(set-face-attribute 'default nil
		    :font "DejaVu Sans Mono"
		    :height 180) ; unit = 0.1pt, 120 = 12pt


(global-set-key (kbd "C-x C-b") 'ibuffer) ; change buffer-list to ibuffer

(global-display-line-numbers-mode) ; display line number

;; set file sidebar
(setq dired-sidebar-width 30)  ; width 30px

(defun activate-dired-sidebar ()
  "create or close dired sidebar"
  (interactive)
  ;; check if exist sidebar
  (if (get-buffer-window "*dired-sidebar*")
      (progn
        (delete-window (get-buffer-window "*dired-sidebar*")) ; close window
        (kill-window "*dired-sidebar*")) ; clear window
    ;; create window if window not exist
    (let ((window (split-window-right dired-sidebar-width)))
      (set-window-buffer window (dired-noselect default-directory))
      (rename-buffer "*dired-sidebar*" t) ; rename buffer for earier manage
      (set-window-dedicated-p window t)))) ; lock window for other can't use it

; bind f1 to open dir sidebar
(global-set-key (kbd "<f1>") 'activate-dired-sidebar)

; press q to close sidebar
(add-hook 'dired-mode-hook
          (lambda ()
            (when (string= (buffer-name) "*dired-sidebar*")
              (default-key dired-mode-map "q" 'activate-dired-sidebar))))

;; (global -set-key (kbd "<f1>") (lambda ()
;;                                (interactive)
;;                                (message default-directory)
;;                                (if (get-buffer "*dired*")
;;                                    (kill-buffer "*dired*")
;;                                  (dired default-directory))))

;; (setq dired-use-ls-dired nil)
;; (setq dired-listing-switches "-aBhl --group-directories-first")

;; (add-hook 'dired-mode-hook (lambda ()
;;                              (define-key dired-mode-map "q" 'kill-current-buffer)))

