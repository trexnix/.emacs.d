;; Show line number
(global-linum-mode 1)
;; Add a space before the number
(setq linum-format " %d")

;; Show column number of cursor on status bar on the bottom
(column-number-mode 1)

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

;; Make title bar MacOS transparent
;; https://www.reddit.com/r/emacs/comments/8lfivt/question_how_to_make_macos_titlebar_same_color_as/
(add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
(add-to-list 'default-frame-alist '(ns-appearance . dark))

;; Change title bar content
;; https://emacs.stackexchange.com/questions/16834/how-to-change-the-title-from-emacshost-to-file-name
(setq-default frame-title-format '("Relax, you're doing fine"))


(provide 'appearance)
