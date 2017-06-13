
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
