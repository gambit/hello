(define-library (hello)

  (import (scheme base) (scheme write))

  (export hi)

  (begin

    (define (hi msg) (display "hello ") (display msg) (display "!\n"))

    (hi "world")))
