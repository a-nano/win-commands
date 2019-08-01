(defsystem "win-commands"
  :version "0.1.0"
  :author "Akihide Nano"
  :license "LLGPL"
  :depends-on ()
  :components ((:module "src"
                :components
                ((:file "main" :depends-on ("utils"))
		 (:file "commands")
		 (:file "utils"))))
  :description ""
  :in-order-to ((test-op (test-op "win-commands/tests"))))

(defsystem "win-commands/tests"
  :author "Akihide Nano"
  :license "LLGPL"
  :depends-on ("win-commands"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for win-commands"
  :perform (test-op (op c) (symbol-call :rove :run c)))
