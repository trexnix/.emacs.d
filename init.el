(package-initialize)

;; Set load path for pre-downloaded LISP package
(setq site-lisp-dir
      (expand-file-name "site-lisp" user-emacs-directory))

;; Set load path for all package's settings
(setq settings-dir
      (expand-file-name "settings" user-emacs-directory))

;; Set load path for custom functions
(setq defuns-dir
      (expand-file-name "defuns" user-emacs-directory))

;; Effectivelly adding previously defined variables to load path
(add-to-list 'load-path site-lisp-dir)
(add-to-list 'load-path settings-dir)
(add-to-list 'load-path defuns-dir)

;; Keep emacs Custom-settings in separate file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)

;; Setup packages
(require 'setup-packages)

;; Install extensions if they're missing
(defun init--install-packages ()
  (packages-install
   '(helm
     helm-ag
     magit
     projectile
     helm-projectile
     alchemist
     ace-window
     smart-mode-line
     subatomic-theme
     json-mode
     neotree
     all-the-icons
     )))

(condition-case nil
    (init--install-packages)
  (error
   (package-refresh-contents)
   (init--install-packages)))

;; Default config
(require 'better-defaults)

;; Appearance
(require 'appearance)
(require 'setup-theme)

;; Setup extensions
(require 'setup-helm)
(require 'setup-alchemist)
(require 'setup-ace-jump-mode)
(require 'setup-projectile)
(require 'setup-smart-mode-line)
(require 'setup-neotree)

;; Custom functions
(require 'file)
(require 'ctags)
(require 'key-bindings)

;; Remove all backup files
(setq make-backup-files nil)
(setq backup-inhibited t)
(setq auto-save-default nil)
