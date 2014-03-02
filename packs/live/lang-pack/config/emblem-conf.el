(add-to-list 'auto-mode-alist '("\\.emblem$" . slim-mode))
(add-hook 'slim-mode-hook
          '(lambda ()
             (add-hook 'before-save-hook 'whitespace-cleanup nil t)
             ))
