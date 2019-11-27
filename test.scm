(define-library (github.com/gambit/hello test)

  (import (..))     ;; relative import of hello (preserves the version)
  (import (_test))  ;; for check-equal? and check-tail-exn
  (import (gambit)) ;; for lambda, with-output-to-string, and
                    ;; wrong-number-of-arguments-exception?

  (begin

    (check-equal? (with-output-to-string (lambda () (hi "you")))
                  "hello you!\n")

    (check-equal? (with-output-to-string (lambda () (salut "hi")))
                  "bonjour hi!\n")

    (check-tail-exn wrong-number-of-arguments-exception?
                    (lambda () (hi)))

    (check-tail-exn wrong-number-of-arguments-exception?
                    (lambda () (hi "foo" "bar")))))
