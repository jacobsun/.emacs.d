(global-set-key (kbd "C-<kp-1>") '(lambda () (interactive) (find-file "E:/Dropbox/.emacs.d/.emacs")))

; program
(global-unset-key (kbd "C-SPC"))
(global-set-key (kbd "C-d") 'delete-selection-repeat-replace-region)
(global-set-key (kbd "C-c v") 'set-mark-command)

; navigation ----------------------------------------------------------------
(global-set-key (kbd "M-<left>") 'move-beginning-of-line)
(global-set-key (kbd "M-<right>") 'move-end-of-line)

; edit
; (global-set-key (kbd "M-/") 'comment-line)
(global-set-key (kbd "C-/") 'comment-line)
(global-set-key [(ctrl shift return)] #'smart-open-line-above)
(global-set-key [(shift return)] #'smart-open-line)
(global-set-key (kbd "C-S-k") #'xah-cut-line-or-region)
(global-set-key (kbd "C-S-l") #'xah-copy-line-or-region)
(global-set-key (kbd "C-S-d") #'duplicate-line-or-region)
(global-set-key (kbd "C-*") #'toggle-case)

; select
(global-set-key (kbd "M-s") 'rectangle-mark-mode)
(global-set-key (kbd "M-r") 'string-rectangle)
(global-set-key (kbd "C-a") 'mark-whole-buffer)

; buffer
(global-set-key (kbd "C-b") 'switch-to-buffer)
(global-set-key (kbd "<f5>") 'revert-buffer)

; misc
(global-set-key (kbd "<f8>") 'eval-last-sexp)

;; org-mode not working
;; (add-hook 'org-mode-hook
;;           '(lambda () (define-key org-mode-map (kbd "M-<left>") nil)
;;           (define-key org-mode-map (kbd "M-<right>") nil)
;; ))
