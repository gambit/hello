(define-library (github.com/gambit/hello demo)

  (import (.. hello)) ;; relative import (preserves the version)
  (import (gambit))   ;; for lambda, this-source-file, etc

  (begin

    (port-settings-set! (current-output-port) '(char-encoding: UTF-8))

    (println "People customarily greet each other when they meet.")

    (print "In English you can say: ") (hi "Bob, nice to see you")

    (print "In French you can say: ") (salut "Bob, je suis enchant\xe9;")

    (println "Demo source code: " (this-source-file))))
