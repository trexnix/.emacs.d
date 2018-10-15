(require 'alchemist)

;; Format Elixir code on save
(add-hook 'elixir-mode-hook
          (lambda () (add-hook 'before-save-hook 'elixir-format nil t)))

(provide 'setup-alchemist)
