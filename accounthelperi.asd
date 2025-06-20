(defsystem "accounthelperi"
  :version "0.0.1"
  :author ""
  :license ""
  :depends-on ()
  :components ((:module "src"
                :components
                ((:file "main"))))
  :description ""
  :in-order-to ((test-op (test-op "accounthelperi/tests"))))

(defsystem "accounthelperi/tests"
  :author ""
  :license ""
  :depends-on ("accounthelperi"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for accounthelperi"
  :perform (test-op (op c) (symbol-call :rove :run c)))
