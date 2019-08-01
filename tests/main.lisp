(defpackage win-commands/tests/main
  (:use :cl
        :win-commands
        :rove))
(in-package :win-commands/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :win-commands)' in your Lisp.

(deftest test-target-1
  (testing "should (= 1 1) to be true"
    (ok (= 1 1))))
