;;js2 mode
(live-add-pack-lib "js2")
(require 'js2-mode)

(add-hook 'js2-mode-hook
          '(lambda ()
                 (add-hook 'before-save-hook 'live-cleanup-whitespace nil t)))
