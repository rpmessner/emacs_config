(live-add-pack-lib "haml-mode")
(require 'haml-mode)
(add-to-list 'auto-mode-alist '("\\.haml$" . haml-mode))
(add-to-list 'auto-mode-alist '("\\.hamlbars$" . haml-mode))
(add-hook 'haml-mode-hook
          '(lambda ()
             ;; somehow this gets called on sass files
             ;; (add-hook 'before-save-hook 'whitespace-cleanup nil t)
             ))
