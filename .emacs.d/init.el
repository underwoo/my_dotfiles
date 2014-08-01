;; ==========================================================
;; Emacs startup file for Seth Underwood on Laptop
;; ==========================================================
;; 20110120
;;    - Initial create
;; ==========================================================

;; ********** Set the color theme **********
;;(require 'color-theme)
;;(color-theme-initialize)
;;(color-theme-charcoal-black)

;; Suppress the splash screen on startup
(setq inhibit-splash-screen t)

;; Set the custom file
(setq custom-file "~/.emacs.d/customs.el")
(load-file "~/.emacs.d/customs.el")

;; Hide the toolbar and scroll bar
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; Turn the colum-number-mode on by default
(setq column-number-mode t)

;; Tramp settings
(load-file "~/.emacs.d/tramp.el")

;; doc-mode / asciidoc
;;(load-file "~/.emacs.d/asciidoc.el")

;; =====================================================================
;; Development settings
;; =====================================================================
;; Enable which-func-mode
(which-func-mode 1)
;; *************** Cedet Settings ***************
;;(require 'cedet)

;; Enabling Semantic (code-parsing, smart completion) features
(setq semantic-default-submodes
      (append semantic-default-submodes
	      (list
	       'global-semantic-idle-scheduler-mode
	       'global-semantic-idle-summary-mode
	       'global-semantic-idle-completions-mode
	       'global-semantic-decoration-mode
	       'global-semantic-highlight-func-mode
	       'global-semantic-stickyfunc-mode
	       'global-semantic-mru-bookmark-mode)))
(semantic-mode 1)
(require 'semantic/ia)

;; Enable EDE (Project Management) features
(global-ede-mode 1)

;; ************************ ECB Settings *************************
;;-until-ecb-pkg-fixed(require 'ecb)
;;(setq ecb-compile-window-height 6)
;;-until-ecb-pkg-fixed(setq ecb-layout-name "left3")
;;-until-ecb-pkg-fixed(setq ecb-source-path (quote ("/home/underwoo")))
;;-until-ecb-pkg-fixed(setq semanticdb-default-save-directory "/home/underwoo/.semantic")

;; Add *.F90 to a recognize Fortran file extension
(setq auto-mode-alist
      (append
       (list
	'("\\.F90" . f90-mode))
       auto-mode-alist))
;; Other Fortran settings
(add-hook 'f90-mode-hook
	  '(lambda ()
;;	     (setq f90-auto-keyword-case 'upcase-word)
	     (setq fill-column 130)
	     (setq truncate-lines t)
	     (linum-mode)
	     (turn-on-auto-fill)
	     (hs-minor-mode)
	     (hide-ifdef-mode)
	     (flyspell-prog-mode)))

;; Make cperl-mode the default perl mode
(fset 'perl-mode 'cperl-mode)
;; Other perl settings
(add-hook 'cperl-mode-hook
	  '(lambda ()
	     (linum-mode)
	     (outline-minor-mode)
	     (flyspell-prog-mode)))

;; Ruby settings
(add-hook 'ruby-mode-hook
	  '(lambda ()
	     (linum-mode)
	     (flyspell-prog-mode)))
