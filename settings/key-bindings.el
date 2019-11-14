;; Magit
(global-set-key (kbd "C-x g") 'magit-status)

;; git-timemachine
(global-set-key (kbd "C-x t") 'git-timemachine)

;; ace-window
(global-set-key (kbd "M-o") 'ace-window)

;; Copy current file path
(global-set-key (kbd "C-x w") 'put-current-file-path-on-clipboard)

(provide 'key-bindings)
