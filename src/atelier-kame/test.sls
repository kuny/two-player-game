(library (atelier-kame test)
  (export assert-equal ok)
  (import (chezscheme))

  (define (assert-equal a b msg)
    (cond ((equal? a b) (display "🐢 PASS\n"))
          (else (error (string-append "🐢 " msg) a b))))

  (define (ok)
    (display "🐢 OK!\n"))

  )



