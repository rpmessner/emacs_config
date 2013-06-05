(add-hook 'emacs-lisp-mode-hook 'turn-on-eldoc-mode)
(add-hook 'lisp-interaction-mode-hook 'turn-on-eldoc-mode)
(add-hook 'ielm-mode-hook 'turn-on-eldoc-mode)

(define-key lisp-mode-shared-map (kbd "RET") 'reindent-then-newline-and-indent)

(defun live-lisp-describe-thing-at-point ()
  "Show the documentation of the Elisp function and variable near point.
   This checks in turn:
     -- for a function name where point is
     -- for a variable name where point is
     -- for a surrounding function call"
          (interactive)
          (let (sym)
            ;; sigh, function-at-point is too clever.  we want only the first half.
            (cond ((setq sym (ignore-errors
                               (with-syntax-table emacs-lisp-mode-syntax-table
                                 (save-excursion
                                   (or (not (zerop (skip-syntax-backward "_w")))
                                       (eq (char-syntax (char-after (point))) ?w)
                                       (eq (char-syntax (char-after (point))) ?_)
                                       (forward-sexp -1))
                                   (skip-chars-forward "`'")
                                   (let ((obj (read (current-buffer))))
                                     (and (symbolp obj) (fboundp obj) obj))))))
                   (describe-function sym))
                  ((setq sym (variable-at-point)) (describe-variable sym))
                  ;; now let it operate fully -- i.e. also check the
                  ;; surrounding sexp for a function call.
                  ((setq sym (function-at-point)) (describe-function sym)))))

(defun slime-js-coffee-eval-current ()
  (interactive)
  (coffee-compile-region (point) (mark))
  (switch-to-buffer coffee-compiled-buffer-name)
  (slime-js-eval-buffer)
  (kill-buffer coffee-compiled-buffer-name))

(defun slime-js-coffee-eval-buffer ()
  (interactive)
  (coffee-compile-buffer)
  (switch-to-buffer coffee-compiled-buffer-name)
  (slime-js-eval-buffer)
  (kill-buffer coffee-compiled-buffer-name))

;; (add-hook 'after-init-hook
;;   #'(lambda ()
;;     (when (locate-library "slime-js")
;;       (require 'setup-slime-js))))

;; (global-set-key [f5] 'slime-js-reload)
;; (add-hook 'js2-mode-hook
;;   (lambda ()
;;     (slime-js-minor-mode 1)))

;; (require 'coffee-mode)

;; (add-hook 'coffee-mode-hook
;;   (lambda ()
;;     (local-set-key (kbd "C-c C-d") 'slime-js-coffee-eval-current)
;;     (local-set-key (kbd "C-c C-b") 'slime-js-coffee-eval-buffer)
;;     (slime-js-minor-mode 1)))
