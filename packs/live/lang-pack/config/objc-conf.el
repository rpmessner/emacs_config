(require 'anything)
(require 'anything-config)

(defvar anything-c-source-objc-headline
  '((name . "Objective-C Headline")
    (headline  "^[-+@]\\|^#pragma mark")))

(defun objc-headline ()
  (interactive)
  ;; Set to 500 so it is displayed even if all methods are not narrowed down.
  (let ((anything-candidate-number-limit 500))
    (anything-other-buffer '(anything-c-source-objc-headline)
                           "*ObjC Headline*")))

(global-set-key "\C-xp" 'objc-headline)

(load-file "~/.emacs.d/lib/w3m-load.el")
(load-file "~/.emacs.d/lib/xcode-document-viewer.el")
(require 'xcode-document-viewer)
(setq xcdoc:document-path "/Users/rmessner/Library/Developer/Shared/Documentation/DocSets/com.apple.adc.documentation.AppleiOS7.0.iOSLibrary.docset")
(setq xcdoc:open-w3m-other-buffer t)
