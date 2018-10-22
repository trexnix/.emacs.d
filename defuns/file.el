;; https://stackoverflow.com/questions/2416655/file-path-to-clipboard-in-emacs
(defun put-current-file-path-on-clipboard ()
  "Put the current file path on the clipboard"
  (interactive)
  (let ((filename (if (equal major-mode 'dired-mode)
                      default-directory
                    (buffer-file-name))))
    (when filename
      (with-temp-buffer
        (insert filename)
        (clipboard-kill-region (point-min) (point-max)))
      (message filename))))

(provide 'file)
