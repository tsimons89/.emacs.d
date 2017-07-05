(setq tab-width 4)
(electric-pair-mode)
(require 'ido)
(ido-mode t)
(setq case-fold-search nil)
(setq python-shell-completion-native-enable nil)
(add-hook 'org-mode-hook 'turn-on-flyspell)
(defun switch-to-terminal ()
  (interactive)
  (if (get-buffer "*terminal*")
	  (switch-to-buffer "*terminal*")
	(ansi-term "/bin/bash" "terminal")))
