(define-library (github.com/gambit/hello demo)

  (import (..))     ;; relative import of hello (preserves the version)
  (import (gambit)) ;; for lambda, this-source-file, etc

  (begin

    (println "People customarily greet each other when they meet.")

    (print "In English you can say: ") (hi "Bob, nice to see you")

    (print "In French you can say: ") (salut "Bob, je suis enchant\xe9;")

    (println "Demo source code: " (this-source-file))))
