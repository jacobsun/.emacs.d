(require 'package)
(add-to-list 'package-archives
    '("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/"))
(add-to-list 'package-archives
    '("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/"))

(package-initialize)

(unless (package-installed-p 'use-package)
   (package-refresh-contents)
   (package-install 'use-package))

(use-package benchmark-init
    :ensure t
    :config
      (add-hook 'after-init-hook 'benchmark-init/deactivate))

(use-package rainbow-delimiters
    :ensure t
    :config
      (add-hook 'prog-mode-hook #'rainbow-delimiters-mode))

(use-package try
    :ensure t

    )
(use-package cl-lib
    :ensure t
    )
(use-package which-key
    :ensure t

    :config (which-key-mode)
    )
(use-package yasnippet
    :ensure t
    :config (yas-global-mode 1)
    )
(use-package expand-region
    :ensure t
    :config
        (bind-key* "C-j" 'er/expand-region)
    )

(use-package undo-tree
    :ensure t

    :config (global-undo-tree-mode)
    )

(use-package beacon
    :ensure t
    :init (setq beacon-color "#999999")
    :config (beacon-mode 1)
    )

(use-package move-text
    :ensure t
    :config
        (global-set-key [(control shift up)]  'move-text-up)
        (global-set-key [(control shift down)]  'move-text-down)
    )


(use-package emmet-mode
    :ensure t
    :config
        (global-set-key [(control e)]  'emmet-expand-line)
        (add-hook 'html-mode-hook 'emmet-mode)
        (add-hook 'web-mode-hook 'emmet-mode)
        (add-hook 'css-mode-hook  'emmet-mode)
    )

(use-package ace-window
    :ensure t

    :config
        (global-set-key [remap other-window] 'ace-window)
        (global-set-key (kbd "<f4>") 'ace-window)
    :custom-face
        (aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0))))
    )
(use-package ace-mc
    :ensure t

    :config
        (global-set-key (kbd "M-'") 'ace-mc-add-multiple-cursors)
        (global-set-key (kbd "C-M-'") 'ace-mc-add-single-cursor)
    )

(use-package dumb-jump
    :ensure t
    :bind (("M-g o" . dumb-jump-go-other-window)
         ("M-g j" . dumb-jump-go)
         ("M-g i" . dumb-jump-go-prompt)
         ("M-g x" . dumb-jump-go-prefer-external)
         ("M-g z" . dumb-jump-go-prefer-external-other-window))
    :config (setq dumb-jump-selector 'ivy)
    )

(use-package avy
    :ensure t
    :init
        (setq avy-background t)
    :config
        (avy-setup-default)
        (setq avy-styles-alist '((avy-goto-char . at-full)))
    :bind ("C-n" . avy-goto-char)
    )

(use-package counsel
    :ensure t
    :bind (("M-y" . counsel-yank-pop)
        :map ivy-minibuffer-map
        ("M-y" . ivy-next-line))
    )

(use-package swiper
    :ensure t
    :init
        (setq ivy-use-virtual-buffers t)
    :config
        (ivy-mode 1)
        (global-set-key "\C-f" 'swiper)
        (global-set-key (kbd "C-S-p") 'counsel-M-x)
        (global-set-key (kbd "<f12>") 'counsel-M-x)
        (global-set-key (kbd "C-o") 'counsel-find-file)
        (global-set-key (kbd "<f6>") 'ivy-resume)
        (global-set-key (kbd "<f1> f") 'counsel-describe-function)
        (global-set-key (kbd "<f1> v") 'counsel-describe-variable)
        (global-set-key (kbd "<f1> l") 'counsel-load-library)
        (global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
        (global-set-key (kbd "<f2> u") 'counsel-unicode-char)
        (define-key read-expression-map (kbd "C-r") 'counsel-expression-history)
    )

(use-package quickrun
    :ensure t
    :defer t
    :config
        (global-set-key (kbd "<f9>") 'quickrun)
    )

;; (use-package shackle
    ;; :ensure t
    ;; :config
    ;; (setq shackle-default-rule '(:select t))
    ;; )
