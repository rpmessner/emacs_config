(live-add-pack-lib "color-theme")
(require 'color-theme)

(global-hl-line-mode 1)

;; use blackbored colour theme
;; (load-file (concat (live-pack-lib-dir) "cyberpunk.el"))
;; (load-file (concat (live-pack-lib-dir) "gandalf.el"))
;; (load-file (concat (live-pack-lib-dir) "solarized-definitions.el"))
;; (add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
;; (load-theme 'fogus t)

(live-add-pack-lib "emacs-color-theme-solarized")
(require 'color-theme-solarized)
(color-theme-solarized-light)

;; (load-file (concat (live-pack-lib-dir) "blueberry.el"))
;; (color-theme-cyberpunk)
;; (color-theme-gandalf)
;; (color-theme-blueberry)
(set-cursor-color "yellow")
