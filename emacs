
;; auto-octave mode
(setq auto-mode-alist
      (cons
       '("\\.m$" . octave-mode)
       auto-mode-alist))

;; matlab mode -- trying octave mode for now
;(autoload 'matlab-mode "matlab" "Matlab Editing Mode" t)
; (add-to-list
;  'auto-mode-alist
;  '("\\.m$" . matlab-mode))
; (setq matlab-indent-function t)
; (setq matlab-shell-command "matlab")

; Require final newline in files
(setq require-final-newline t)