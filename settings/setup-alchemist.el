(require 'alchemist)

;; Format Elixir code on save
(add-hook 'elixir-mode-hook
          (lambda () (add-hook 'before-save-hook 'elixir-format nil t)))

;; Workaround fix for Mix Format on save problem
;; https://github.com/asdf-vm/asdf-elixir/issues/62
(eval-after-load "elixir-mode"
  '(defun elixir-format--mix-executable ()
     (string-trim-right (shell-command-to-string "asdf which mix"))))

(provide 'setup-alchemist)
