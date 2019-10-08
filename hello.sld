(define-library (hello)

  (import (scheme base) (scheme write))

  (export hi salut)

  (begin

    (define (exclaim msg1 msg2) (display msg1) (display msg2) (display "!\n"))

    (define (hi name) (exclaim "hello " name))

    (define (salut name) (exclaim "bonjour " name))

    (salut "le monde")))
