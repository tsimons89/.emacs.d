(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

(setq my-packages
  '(better-defaults
    smart-mode-line
    smart-mode-line-powerline-theme
    elpy))

(dolist (package my-packages)
    (unless (package-installed-p package)
      (package-install package)))


(add-to-list `custom-theme-load-path "~/.emacs.d/themes/")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("4528fb576178303ee89888e8126449341d463001cb38abe0015541eb798d8a23" default)))
 '(package-selected-packages (quote (elpy))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(elpy-enable)
