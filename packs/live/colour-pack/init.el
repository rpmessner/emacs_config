(live-add-pack-lib "color-theme")
(require 'color-theme)

(global-hl-line-mode 1)
(load-file "~/.emacs.d/themes/color-theme-tomorrow.el")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'tomorrow-night-eighties t)


;; (live-add-pack-lib "emacs-color-theme-solarized")
;; (require 'color-theme-solarized)
;; (color-theme-solarized-dark)


;; (load-file (concat (live-pack-lib-dir) "blueberry.el"))
;; (color-theme-cyberpunk)
;; (color-theme-gandalf)
;; (color-theme-blueberry)
(set-cursor-color "yellow")
