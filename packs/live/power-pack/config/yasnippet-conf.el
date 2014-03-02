(live-add-pack-lib "yasnippet")
(require 'yasnippet)1
(setq yas/trigger-key (kbd "C-c 1"))
(yas/initialize)  

;; This is where your snippets will lie.
(setq yas/root-directory '("~/.emacs.d/etc/snippets"))
(mapc 'yas/load-directory yas/root-directory)
