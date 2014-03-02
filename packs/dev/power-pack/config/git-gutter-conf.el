(live-add-pack-lib "emacs-git-gutter")
(require 'git-gutter)

(setq git-gutter:window-width 2)

(global-git-gutter-mode t)

(setq git-gutter:hide-gutter t)

(setq git-gutter:lighter " G-+")

(setq git-gutter:added-sign "+ ")
(setq git-gutter:deleted-sign "- ")
(setq git-gutter:modified-sign "~ ")
(setq git-gutter:unchanged-sign "  ")

;; git gutter colors

(set-face-foreground 'git-gutter:modified "#8959a8")
(set-face-foreground 'git-gutter:unchanged "#d6d6d6")
(set-face-foreground 'git-gutter:deleted "#d54e53")
(set-face-foreground 'git-gutter:added "#b5bd68")

(set-face-background 'git-gutter:modified "#373b41")
(set-face-background 'git-gutter:unchanged "#2a2a2a")
(set-face-background 'git-gutter:deleted "#1d1f21")
(set-face-background 'git-gutter:added "#4d4d4c")

