
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(server-start)
(setq tab-width 4)
(linum-mode)
(global-set-key (kbd "C-'") 'comment-line)
(global-set-key (kbd "<C-tab>") 'ido-switch-buffer)
(electric-pair-mode)
