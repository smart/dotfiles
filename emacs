(setq load-path (cons "~/.emacs.d" load-path))

(require 'init)

(add-hook 'before-save-hook 'delete-trailing-whitespace)
