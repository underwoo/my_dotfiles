(require 'tramp)
(setq tramp-default-method "scp")

;; Uncomment if needing to debug tramp connections
;;(setq tramp-debug-buffer t)
;;(setq tramp-verbose 10)

(add-to-list 'tramp-methods
	     '("gsiscp"
	       (tramp-login-program "/usr/local/gt/5.2.5/bin/gsissh")
	       (tramp-login-args (("-l" "%u") ("-p" "%p") ("-e" "none") ("%h")))
	       (tramp-async-args (("-q")))
	       (tramp-remote-shell "/bin/sh")
	       (tramp-remote-shell-args ("-c"))
	       (tramp-copy-program "/usr/local/gt/5.2.5/bin/gsiscp")
	       (tramp-copy-args (("-P" "%p") ("-p" "%k") ("-q") ("-r")))
	       (tramp-copy-keep-date t)
	       (tramp-copy-recursive t)
	       (tramp-gw-args (("-o" "GlobalKnownHostsFile=/dev/null")
			       ("-o" "UserKnownHostsFile=/dev/null")
			       ("-o" "StrictHostKeyChecking=no")))
	       (tramp-default-port 22)))

(add-to-list 'tramp-methods
	     '("gsisftp"
	       (tramp-login-program "/usr/local/gt/5.2.5/bin/gsissh")
	       (tramp-login-args (("-l" "%u") ("-p" "%p") ("-e" "none") ("%h")))
	       (tramp-async-args (("-q")))
	       (tramp-remote-shell "/bin/sh")
	       (tramp-remote-shell-args ("-c"))
	       (tramp-copy-program "/usr/local/gt/5.2.5/bin/gsisftp")))

(add-to-list 'tramp-methods
	     '("gsissh"
	       (tramp-login-program "/usr/local/gt/5.2.5/bin/gsissh")
	       (tramp-login-args (("-l" "%u") ("-p" "%p") ("-e" "none") ("%h")))
	       (tramp-async-args (("-q")))
	       (tramp-remote-shell "/bin/sh")
	       (tramp-remote-shell-args ("-c"))
	       (tramp-gw-args (("-o" "GlobalKnownHostsFile=/dev/null")
			       ("-o" "UserKnownHostsFile=/dev/null")
			       ("-o" "StrictHostKeyChecking=no")))
	       (tramp-default-port 22)))

(add-to-list 'tramp-default-method-alist '("gaea1" "" "gsissh"))
(add-to-list 'tramp-default-method-alist '("gaea2" "" "gsissh"))
(add-to-list 'tramp-default-method-alist '("gaea3" "" "gsissh"))
(add-to-list 'tramp-default-method-alist '("gaea4" "" "gsissh"))
(add-to-list 'tramp-default-method-alist '("gaea5" "" "gsissh"))
(add-to-list 'tramp-default-method-alist '("gaea6" "" "gsissh"))
(add-to-list 'tramp-default-method-alist '("gaea7" "" "gsissh"))
(add-to-list 'tramp-default-method-alist '("gaea8" "" "gsissh"))

