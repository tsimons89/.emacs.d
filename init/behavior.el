(setq tab-width 4)
(electric-pair-mode)
(require 'ido)
(ido-mode t)
(setq case-fold-search nil)
(setq python-shell-completion-native-enable nil)


(defun switch-to-terminal ()
  "Switch to terminal buffer or create a new one if one does not already exist."
  (interactive)
  (if (get-buffer "*terminal*")
	  (switch-to-buffer "*terminal*")
	(ansi-term "/bin/bash" "terminal")))
;; org mode

(load-library "find-lisp")
(setq org-agenda-files (find-lisp-find-files "~/org" "\.org$"))
(add-hook 'org-mode-hook 'turn-on-flyspell)
(defun my-org-agenda (&optional arg)
  "Start agenda in specific mode."
  (interactive)
  (org-agenda arg "a"))
