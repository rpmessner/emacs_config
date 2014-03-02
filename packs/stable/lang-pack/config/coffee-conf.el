(live-add-pack-lib "coffee-mode")
(require 'coffee-mode)

(custom-set-variables '(coffee-tab-width 2))

(add-hook 'coffee-mode-hook
          '(lambda ()
             (add-hook 'before-save-hook 'live-cleanup-whitespace nil t)))
