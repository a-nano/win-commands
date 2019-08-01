(in-package :win-commands)

(macrolet ((command ()
	     `(eval-when (:compile-toplevel :load-toplevel :execute)
		(define-command ping)
		(export 'ping))))
  (command))
