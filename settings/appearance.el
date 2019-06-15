;; Show line number
(global-linum-mode 1)

;; Highlight current line
(global-hl-line-mode 1)

;; Show trailing white spaces
(setq-default show-trailing-whitespace t)

;; Nyan mode
(nyan-mode 1)

;; Make the cursor blink and update its type to "bar" (equivalent to "text" in CSS)
(blink-cursor-mode 1)
(setq-default cursor-type 'bar)

(provide 'appearance)
