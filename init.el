
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(server-start)
(load "~/.emacs.d/init/init_packages.el")
(load "~/.emacs.d/init/behavior.el")
(load "~/.emacs.d/init/appearance.el")
(load "~/.emacs.d/init/keybind.el")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("84d2f9eeb3f82d619ca4bfffe5f157282f4779732f48a5ac1484d94d5ff5b279" "4528fb576178303ee89888e8126449341d463001cb38abe0015541eb798d8a23" default)))
 '(package-selected-packages
   (quote
    (org-bullets smart-mode-line-powerline-theme smart_mode_line elpy))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
