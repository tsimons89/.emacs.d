;;Spell check
(add-hook 'org-mode-hook 'turn-on-flyspell)

;;Find all .org files in ~/org directory
(load-library "find-lisp")
(setq org-agenda-files (find-lisp-find-files "~/org" "\.org$"))

;;I bind this function to F9. It will bring up composite
;;view of agenda and todo list
(defun my-org-agenda (&optional arg)
  "Start agenda in specific mode."
  (interactive)
  (org-agenda arg "c"))
(setq org-agenda-custom-commands 
      '(("c" "Agenda/unscheduled/deadline"
	 ((agenda "")
	  (tags-todo "-SCHEDULED={.+}-DEADLINE={.+}")
	  (tags-todo "+DEADLINE={.+}")))))
;;Swith todo items to done when check list is completed
(defun org-summary-todo (n-done n-not-done)
  "Switch entry to DONE when all subentries are done, to TODO otherwise."
  (let (org-log-done org-log-states)   ; turn off logging
    (org-todo (if (= n-not-done 0) "DONE" "TODO"))))
(add-hook 'org-after-todo-statistics-hook 'org-summary-todo)
;;Same as above but for checkboxes
(defun my/org-checkbox-todo ()
  "Switch header TODO state to DONE when all checkboxes are ticked, to TODO otherwise"
  (let ((todo-state (org-get-todo-state)) beg end)
    (unless (not todo-state)
      (save-excursion
	(org-back-to-heading t)
	(setq beg (point))
	(end-of-line)
	(setq end (point))
	(goto-char beg)
	(if (re-search-forward "\\[\\([0-9]*%\\)\\]\\|\\[\\([0-9]*\\)/\\([0-9]*\\)\\]"
			       end t)
	    (if (match-end 1)
		(if (equal (match-string 1) "100%")
		    (unless (string-equal todo-state "DONE")
		      (org-todo 'done))
		  (unless (string-equal todo-state "TODO")
		    (org-todo 'todo)))
	      (if (and (> (match-end 2) (match-beginning 2))
		       (equal (match-string 2) (match-string 3)))
		  (unless (string-equal todo-state "DONE")
		    (org-todo 'done))
		(unless (string-equal todo-state "TODO")
		  (org-todo 'todo)))))))))
(add-hook 'org-checkbox-statistics-hook 'my/org-checkbox-todo)
;;Enforece dependecies
(setq org-enforce-todo-dependencies t)
(setq org-enforce-todo-checkbox-dependencies t)
