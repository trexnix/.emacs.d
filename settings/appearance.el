;; Show line number
(global-linum-mode 1)

;; Highlight current line
(global-hl-line-mode 1)

;; Show trailing white spaces
(setq-default show-trailing-whitespace t)

;; Nyan mode
(nyan-mode 1)

;; Maximize window frame on startup
;; https://emacs.stackexchange.com/questions/2999/how-to-maximize-my-emacs-frame-on-start-up
;;
;; (following post helps to remove the gap happening on MacOS)
;; https://stackoverflow.com/questions/27758800/why-does-emacs-leave-a-gap-when-trying-to-maximize-the-frame
(setq frame-resize-pixelwise t)
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; Make the cursor blink and update its type to "bar" (equivalent to "text" in CSS)
(blink-cursor-mode 1)
(setq-default cursor-type 'bar)

(provide 'appearance)
