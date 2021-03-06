
(asdf:defsystem :opticl-more-test
  :name "opticl-more-test"
  :description "Test library for opticl. Kept separate from opticl to keep opticl size down."
  :author "Cyrus Harmon <ch-lisp@bobobeach.com>"
  :licence "BSD"
  :default-component-class cl-source-file
  :depends-on (opticl)
  :serial t
  :components
  ((:file "package")
   (:file "opticl-more-test")
   (:file "shapes-test")
   (:file "transform-test")
   (:file "threshold-test")
   (:file "gamma-test"))
  :in-order-to ((test-op (test-op :opticl-more-test/test))))

(asdf:defsystem :opticl-more-test/test
  :depends-on (:opticl-more-test :fiveam)
  :serial t
  :default-component-class cl-source-file
  :components
  ((:module :test
            :components ((:file "opticl-more-test"))))
  :perform (test-op (o c)
                    (uiop:symbol-call :fiveam '#:run! :opticl-more-test)))


