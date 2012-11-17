(live-add-pack-lib "haml-mode")
(require 'haml-mode)
(add-to-list 'auto-mode-alist '("\\.haml$" . haml-mode))
(add-to-list 'auto-mode-alist '("\\.hamlbars$" . haml-mode))
