(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (rainbow-delimiters rainbow-delimiters-mode shackle use-package which-key try spacemacs-theme))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0)))))

(prefer-coding-system 'utf-8)
(modify-coding-system-alist 'process "*" 'utf-8)
(set-language-environment 'utf-8)
(set-default-coding-systems 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-file-name-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(setq ansi-color-for-comint-mode t)
(setq-default pathname-coding-system 'utf-8)
(setq default-process-coding-system '(utf-8 . utf-8))
(setq sentence-end "\\([。！？]\\|……\\|[.?!][]\"')}]*\\($\\|[ \t]\\)\\)[ \t\n]*")

(when (eq system-type 'windows-nt)
    (set-selection-coding-system 'utf-16-le)
    (set-clipboard-coding-system 'utf-16-le)
    (set-next-selection-coding-system 'utf-16-le)
    (set-default 'process-coding-system-alist
     '(("[pP][lL][iI][nN][kK]" gbk-dos . gbk-dos)
        ("[cC][mM][dD][pP][rR][oO][xX][yY]" gbk-dos . gbk-dos)
        )
      )
    )

(unless (eq system-type 'windows-nt)
    (setq locale-coding-system 'utf-8)
    )
