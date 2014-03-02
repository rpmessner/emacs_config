(live-add-pack-lib "color-theme")
(require 'color-theme)

;; use blackbored colour theme
;; (load-file (concat (live-pack-lib-dir) "cyberpunk.el"))
;; (load-file (concat (live-pack-lib-dir) "gandalf.el"))
(load-file (concat (live-pack-lib-dir) "themes/color-theme-tomorrow.el"))
(add-to-list 'custom-theme-load-path (concat (live-pack-lib-dir) "themes"))

;; (color-theme-cyberpunk)
(load-theme 'tomorrow-night-eighties t)
;; (set-cursor-color "yellow")
