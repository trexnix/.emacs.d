(require 'neotree)

;; Key to toggle NeoTree
(global-set-key [f8] 'neotree-toggle)
;; Manually reveal currently-opening file on NeoTree
(global-set-key (kbd "C-x r") 'neotree-find)

;; Set sidebar width to be more wider than default
;; also make it to be resizable
(setq neo-window-fixed-size nil)
(setq neo-window-width 38)

;; Auto reveal currently-opening file when NeoTree is opened
(setq neo-smart-open t)

;; Set icons to acsii
; (setq neo-theme 'arrow)

;; Switch project will update NeoTree automatically
(setq projectile-switch-project-action 'neotree-projectile-action)

(provide 'setup-neotree)