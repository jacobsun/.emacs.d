; define
(setenv "HOME" "E:/Dropbox")
(let ((default-directory  "~/.emacs.d/")) (normal-top-level-add-subdirs-to-load-path))
(setq abbrev-file-name "~/.emacs.d/.abbrev_defs")
(setq bookmark-default-file "~/.emacs.d/.emacs.bmk")
(setq custom-file (expand-file-name "wont_touch.el" "~/.emacs.d/config"))

; load
(load "pkg.el")
(load "defun.el")
(load "kbd.el")
(load custom-file)

; persona
(setq user-full-name "sunreal")
(setq user-mail-address "jacob.sun.meta@gmail.com")
(load-theme 'spacemacs-dark t)
(setq-default cursor-type 'bar) 
(setq-default line-spacing 0.3)
(set-face-attribute 'default nil :font "DejaVu Sans Mono-10:antialias=subpixel")
(dolist (charset '(han cjk-misc bopomofo kana))
    (set-fontset-font (frame-parameter nil 'font) charset "Microsoft Yahei-12:antialias=subpixel"))
(set-fontset-font (frame-parameter nil 'font) 'unicode "Segoe UI Symbol-12" nil 'append)
(set-fontset-font (frame-parameter nil 'font) '(#x1F600 . #x1F6C5) "Segoe UI Symbol-12" nil 'append)
; turn off
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq make-backup-files nil)
(setq inhibit-startup-message t)
(setq ring-bell-function 'ignore)
(setq initial-scratch-message "")
(setq package-enable-at-startup nil)
(setq sentence-end-double-space nil)
(setq auto-save-list-file-prefix nil)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'set-goal-column 'disabled nil)
(put 'narrow-to-region 'disabled nil)

; turn on
(setq show-paren-delay 0)
(setq indent-tabs-mode t)
(setq custom-safe-themes t)
(setq mouse-yank-at-point t)
(setq require-final-newline t)
(setq select-enable-clipboard t)
(setq mouse-autoselect-window t)
(setq cua-keep-region-after-copy t)
(cua-mode t)
; (winner-mode 1)
(show-paren-mode 1)
(electric-pair-mode 1)
; (global-hl-line-mode 1)
(delete-selection-mode 1)
; (global-auto-revert-mode 1)
(global-display-line-numbers-mode 1)
; (global-whitespace-mode 1)

; behaviour
(fset 'yes-or-no-p 'y-or-n-p)
(setq initial-major-mode 'text-mode)
(setq scroll-step 1 scroll-margin 1 scroll-conservatively 10000)
(setq frame-title-format '(buffer-file-name "%f" (dired-directory dired-directory "%b")))
(defalias 'list-buffers 'ibuffer-other-window)

; workflow
(add-hook 'window-setup-hook 'toggle-frame-maximized t)
(add-hook 'focus-out-hook 'save-all)

; editor
(setq default-fill-column 80)
(setq tab-width 2)
(setq-default indent-tabs-mode  nil)
(setq tab-stop-list '(2 4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76 80))
(defvaralias 'c-basic-offset 'tab-width)
(defvaralias 'cperl-indent-level 'tab-width)
(setq whitespace-style (quote (face trailing spaces tabs space-mark tab-mark )))
(setq whitespace-display-mappings
    '((space-mark 32 [183] [46])
      (tab-mark 9 [9655 9] [92 9])
        )
  )

; ibuffer
(setq ibuffer-saved-filter-groups
    (quote (("default"
        ("dired" (mode . dired-mode))
        ("org" (name . "^.*org$"))

        ("web" (or (mode . web-mode) (mode . js2-mode)))
        ("shell" (or (mode . eshell-mode) (mode . shell-mode)))
        ("mu4e" (name . "\*mu4e\*"))
        ("programming" (or
               (mode . python-mode)
               (mode . c++-mode)))
        ("emacs" (or
         (name . "^\\*scratch\\*$")
         (name . "^\\*Messages\\*$")))
        ))))
(add-hook 'ibuffer-mode-hook
    (lambda ()
        (ibuffer-auto-mode 1)
        (ibuffer-switch-to-saved-filter-groups "default")))
(setq ibuffer-show-empty-filter-groups nil)

(setq ibuffer-expert t)
