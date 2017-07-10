(setq tab-width 2)
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
