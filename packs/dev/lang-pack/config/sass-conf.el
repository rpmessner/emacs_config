(live-add-pack-lib "sass-mode")

(require 'sass-mode)

(add-to-list 'auto-mode-alist '("\\.sass\\'" . sass-mode))
(add-to-list 'auto-mode-alist '("\\.scss\\'" . sass-mode))
(add-hook 'sass-mode '(lambda ()
                        (setq indent-tabs-mode y)
                        (define-key sass-mode-map (kbd "M-s") 'save-buffer)))
