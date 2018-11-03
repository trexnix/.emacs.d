(defun create-tags (dir-name)
    "Create tags file."
    (interactive "DDirectory: ")
    (shell-command
     (format "ctags -f TAGS -e -R %s" (directory-file-name dir-name)))
    )

(provide 'ctags)
