(require 'tramp)
(setq tramp-default-method "scp")
(add-to-list 'tramp-methods
	     '("gsiscp"
	       (tramp-login-program "gsissh")
	       (tramp-login-args (("-l" "%u") ("-p" "%p") ("-e" "none") ("%h")))
	       (tramp-async-args (("-q")))
	       (tramp-remote-shell "/bin/sh")
	       (tramp-remote-shell-args ("-c"))
	       (tramp-copy-program "gsiscp")
	       (tramp-copy-args (("-P" "%p") ("-p" "%k") ("-q") ("-r")))
	       (tramp-copy-keep-date t)
	       (tramp-copy-recursive t)
	       (tramp-gw-args (("-o" "GlobalKnownHostsFile=/dev/null")
			       ("-o" "UserKnownHostsFile=/dev/null")
			       ("-o" "StrictHostKeyChecking=no")))
	       (tramp-default-port 22)))

(add-to-list 'tramp-methods
	     '("gsisftp"
	       (tramp-login-program "gsissh")
	       (tramp-login-args (("-l" "%u") ("-p" "%p") ("-e" "none") ("%h")))
	       (tramp-async-args (("-q")))
	       (tramp-remote-shell "/bin/sh")
	       (tramp-remote-shell-args ("-c"))
	       (tramp-copy-program "gsisftp")))

(add-to-list 'tramp-methods
	     '("gsissh"
	       (tramp-login-program "gsissh")
	       (tramp-login-args (("-l" "%u") ("-p" "%p") ("-e" "none") ("%h")))
	       (tramp-async-args (("-q")))
	       (tramp-remote-shell "/bin/sh")
	       (tramp-remote-shell-args ("-c"))
	       (tramp-gw-args (("-o" "GlobalKnownHostsFile=/dev/null")
			       ("-o" "UserKnownHostsFile=/dev/null")
			       ("-o" "StrictHostKeyChecking=no")))
	       (tramp-default-port 22)))

(add-to-list 'tramp-default-method-alist '("gaea1" "" "gsiscp"))
(add-to-list 'tramp-default-method-alist '("gaea2" "" "gsiscp"))
(add-to-list 'tramp-default-method-alist '("gaea3" "" "gsiscp"))
(add-to-list 'tramp-default-method-alist '("gaea4" "" "gsiscp"))
(add-to-list 'tramp-default-method-alist '("gaea5" "" "gsiscp"))
(add-to-list 'tramp-default-method-alist '("gaea6" "" "gsiscp"))
(add-to-list 'tramp-default-method-alist '("gaea7" "" "gsiscp"))
(add-to-list 'tramp-default-method-alist '("gaea8" "" "gsiscp"))
