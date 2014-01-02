;; tomd's gnu .emacs customization
;;
;; see also: .emacs-x (xemacs)
;;
;; $Id$


;; turn on stuff that is often disabled by default...
;;
;(put 'eval-expression 'disabled nil)
;(put 'narrow-to-region 'disabled nil)
;(put 'set-goal-column 'disabled nil)
;(server-start)				; only do this on luna!

;; turn off stuff I don't want...
;;
; turn off ange-ftp on //file
;(delete '("^/[^/:]*\\'" . ange-ftp-completion-hook-function) 
;        file-name-handler-alist)
;(delete '("^/[^/:]*[^/:]:" . ange-ftp-hook-function)
;        file-name-handler-alist)
; -or-
;(setq file-name-handler-alist nil)	; turn off ange-ftp on //file

;; general stuff...
;;
(setq-default fill-column 75)
(setq require-final-newline t)
(setq visible-bell t)
(setq backup-by-copying-when-linked t)
; (setq vc-make-backup-files t)		; temp, to make #'d backups.
; (setq version-control t)		; temp, to make #'d backups.
(display-time)
;- (setq resize-minibuffer-mode t)
;- (resize-minibuffer-mode)
(setq lpr-command "~/bin/list")
(setq lpr-switches nil)
(setq next-line-add-newlines nil)
;(blink-cursor-mode t)
(setq bar-cursor nil)
(setq shrink-window-if-larger-than-buffer t)
(setq hyper-apropos-shrink-window t)
(setq hypropos-shrink-window t)
(setq mouse-avoidance-mode 'exile)


;; things I mistype...
;;
(global-set-key "\C-x\C-o" 'other-window)
(global-set-key "\C-xf" 'find-file)
(global-set-key "\C-x\C-k" 'kill-buffer)
(global-set-key "\M-," 'beginning-of-buffer)
(global-set-key "\M-." 'end-of-buffer)		;; reassign M-.
;(global-set-key "\C-," 'beginning-of-buffer)
;(global-set-key "\C-." 'end-of-buffer)
(global-set-key "\C-x." 'find-tag)
(global-unset-key "\C-x\C-c")
(global-set-key "\C-x\C-c\C-c" 'save-buffers-kill-emacs)
(global-unset-key "\C-z")
(global-unset-key "\C-x\C-z")
(global-set-key "\C-z\C-z" 'iconify-or-deiconify-frame)


;; frequently used stuff...
;;
(global-set-key "\C-cb" 'bury-buffer)
(global-set-key "\C-cl" 'goto-line)
(global-set-key "\C-cm" 'list-matching-lines)
(global-set-key "\C-c." 'gid)
(global-set-key "\C-c=" 'what-line)
(global-set-key "\C-cw" 'compare-windows)
(setq grep-command "egrep -ni ")
(global-set-key "\C-cg" 'grep)
;(global-set-key "\C-x\C-^" 'shrink-window)
(global-set-key "\C-cz" 'zoom)
(global-set-key "\C-ct" 'toggle-truncate-lines)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-lock-mode t t (font-lock))
 '(nxml-slash-auto-complete-flag t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:size "11pt" :family "Courier 10 Pitch"))))
 '(cperl-nonoverridable-face ((((class color) (background light)) (:foreground "purple"))))
 '(cvs-handled-face ((((class color) (background light)) (:foreground "pink3"))))
 '(cvs-need-action-face ((((class color) (background light)) (:foreground "orange3")))))

;(setq cperl-indent-level 4)

;; turn off "untabify" stuff...
;;
;(global-set-key "\C-h" 'backward-delete-char)




;; function keys
;;
(global-set-key [f22] 'next-error)		;; PrSc


;; customize to sun keyboard...
;;
;- (global-set-key [backspace] 'delete-char)	;; Back Space
;;					     ;; Right Hand Side keypad labels:
(global-set-key [f21] 'compile)			;; Pause
;;(global-set-key [f22] 'next-error)		;; PrSc
(global-set-key [f24] 'what-line)		;; =
(global-set-key [f25] 'query-replace)		;; / synonym for M-%
(global-set-key [f26] 'query-replace-regexp)	;; *
(global-set-key [f27] 'beginning-of-line)	;; Home
(global-set-key [(shift f27)] 'beginning-of-buffer)	;; shift Home
(global-set-key [(control up)] 'beginning-of-buffer)	;; control Home
(global-set-key [(shift f28)] 'enlarge-window)		;; shift up arrow
(global-set-key [(control f28)] 'enlarge-window)		;; control up arrow
(global-set-key [f29] 'scroll-down)		;; PgUp
(global-set-key [left] 'backward-word)		;; left arrow
(global-set-key [f30] 'backward-kill-word)	;; shift left arrow
(global-set-key [(control left)] 'backward-list)	;; control left arrow
(global-set-key [f31] 'kill-word)		;; 5
(global-set-key [right] 'forward-word)		;; right arrow
(global-set-key [f32] 'kill-word)		;; shift right arrow
(global-set-key [(control right)] 'forward-list)	;; control right arrow
(global-set-key [f33] 'end-of-line)		;; End
(global-set-key [(shift f33)] 'end-of-buffer)		;; shift End
(global-set-key [(control f33)] 'end-of-buffer)		;; control End
(global-set-key [(shift down)] 'shrink-window)	;; shift down arrow
(global-set-key [(control f34)] 'shrink-window)	;; control down arrow
(global-set-key [f35] 'scroll-up)		;; PgDn

; note:  f11 and f12 are seen by emacs as F35 and F36, respectively.  weird.

;; customize to sun keyboard...
;;					     ;; Top row function key labels:
(global-set-key [f1] 'backward-char)		;; F1
(global-set-key [f2] 'forward-char)		;; F2
(global-set-key [f3] 'find-file)		;; F3
(global-set-key [f4] 'find-file-other-window)	;; F4
(global-set-key [f5] 'switch-to-buffer-other-window)	;; F5
(global-set-key [f12] 'next-error)		;; F12
;(global-set-key [f36] 'other-window)		;; F12
(global-set-key [(control f36)] 'other-frame)		;; control F12

