(defpackage accounthelperi/tests/main
  (:use :cl
        :accounthelperi
        :rove))
(in-package :accounthelperi/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :accounthelperi)' in your Lisp.

(deftest test-target-1
  (testing "should (= 1 1) to be true"
    (ok (= 1 1))))
