(global-set-key (kbd "C-;") 'comment-line)
(global-set-key (kbd "<f5>") (kbd "C-u C-c C-c"))
(global-set-key (kbd "<f12>") 'switch-to-terminal)
(global-set-key "\M-\C-g" 'org-plot/gnuplot)

;;org mode
(global-set-key (kbd "<f9>") 'my-org-agenda)
(define-key org-mode-map (kbd "C-c a") 'org-agenda)
