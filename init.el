
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

(setq my-packages
  '(better-defaults
    smart-mode-line
    smart-mode-line-powerline-theme
    gnuplot
    orgtbl-ascii-plot
    elpy))

(dolist (package my-packages)
    (unless (package-installed-p package)
      (package-install package)))

(server-start)
;; (load "~/.emacs.d/init/init_packages.el")

(add-to-list `custom-theme-load-path "~/.emacs.d/themes/")


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "84d2f9eeb3f82d619ca4bfffe5f157282f4779732f48a5ac1484d94d5ff5b279" "4528fb576178303ee89888e8126449341d463001cb38abe0015541eb798d8a23" default)))
 '(package-selected-packages
   (quote
    (org-bullets smart-mode-line-powerline-theme smart_mode_line elpy))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(elpy-enable)
(sml/setup)
(sml/apply-theme 'powerline)
(load "~/.emacs.d/init/behavior.el")
(load "~/.emacs.d/init/org_prefs.el")
(load "~/.emacs.d/init/appearance.el")
(load "~/.emacs.d/init/keybind.el")
