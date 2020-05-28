(define-library (github.com/gambit/hello test)

  (import (..))     ;; relative import of hello (preserves the version)
  (import (_test))  ;; for test-equal and test-error-tail
  (import (gambit)) ;; for lambda, with-output-to-string, and
                    ;; wrong-number-of-arguments-exception?

  (begin

    (test-equal "hello you!\n"
                (with-output-to-string (lambda () (hi "you"))))

    (test-equal "bonjour hi!\n"
                (with-output-to-string (lambda () (salut "hi"))))

    (test-error-tail wrong-number-of-arguments-exception?
                     (lambda () (hi)))

    (test-error-tail wrong-number-of-arguments-exception?
                     (lambda () (hi "foo" "bar")))))
