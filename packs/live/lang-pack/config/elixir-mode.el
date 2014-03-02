(add-to-list 'load-path "~/.emacs.d/lib/emacs-elixir")
(require 'elixir-mode)
(add-hook 'elixir-mode-hook
          '(lambda ()
             (add-hook 'before-save-hook 'whitespace-cleanup nil t)))
