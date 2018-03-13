(defun open-todo ()
       (interactive)
       (find-file "~/Desktop/org/todo.org"))

(global-set-key (kbd "<f9>") 'open-todo)

(provide 'rc-open-todo)
