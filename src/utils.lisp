(defpackage win-commands.utils
  (:use :cl
	:uiop)
  (:export :define-command))
(in-package win-commands.utils)

(defmacro define-command (name &key set-command)
  (let* ((commands (with-output-to-string (s)
		     (uiop:run-program (concatenate 'string "where "
						    (if set-command
							set-command
							(string name)))
				       :output s
				       :ignore-error-status t)))
	 (command (subseq commands 0 (position #\return commands))))
    (when (not (string= command ""))
      `(progn
	 (defun ,name (&rest rest)
	   (with-output-to-string (s)
	     (uiop:run-program (concatenate 'string
					    ,command
					    " "
					    (when rest (car rest)))
			       :ignore-error-status t
			       :output s
			       :external-format :sjis)))
	 ',name))))
