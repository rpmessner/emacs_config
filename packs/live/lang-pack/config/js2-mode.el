(add-to-list 'load-path "~/.emacs.d/lib/js2-mode")
(set-variable 'c-basic-offset 2)
(require 'js2-mode)
(add-to-list 'load-path "~/.emacs.d/lib/skewer-mode/")
(load-file "~/.emacs.d/lib/skewer-mode/skewer-mode.el")
(load-file "~/.emacs.d/lib/skewer-mode/skewer-repl.el")
(add-to-list 'load-path "~/.emacs.d/lib/jshint-mode")

(add-hook 'js2-mode-hook
          '(lambda ()
             (add-hook 'before-save-hook 'whitespace-cleanup nil t)
             ))

;; (setenv "PATH" (concat "/usr/local/bin:" (getenv "PATH")))
(setenv "PATH" (concat "/Users/rmessner/.nvm/v0.9.9/bin" (getenv "PATH")))
(add-to-list 'exec-path "/Users/rmessner/.nvm/v0.9.9/bin")

(require 'flymake-jshint)
(add-hook 'javascript-mode-hook (lambda () (flymake-mode t)))
(add-hook 'find-file-hook 'flymake-find-file-hook)

;; coffeescript
(add-hook 'coffee-mode-hook
          '(lambda ()
             (add-hook 'before-save-hook 'whitespace-cleanup nil t)
             ))
