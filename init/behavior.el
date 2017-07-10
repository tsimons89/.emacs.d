(setq tab-width 2)
(electric-pair-mode)
(require 'ido)
(ido-mode t)
(setq case-fold-search nil)
(setq python-shell-completion-native-enable nil)
;; do not add newline on semicolon
(setq verilog-auto-newline nil)
;; remove ";" mapping so that there are no electric effects
(add-hook 'verilog-mode-hook
  (lambda ()
    (define-key verilog-mode-map ";" nil)))


(defun switch-to-terminal ()
  "Switch to terminal buffer or create a new one if one does not already exist."
  (interactive)
  (if (get-buffer "*terminal*")
	  (switch-to-buffer "*terminal*")
	(ansi-term "/bin/bash" "terminal")))
