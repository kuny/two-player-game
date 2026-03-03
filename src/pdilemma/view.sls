(library (pdilemma view)
  (export title
          print-games
          please-select
          print-result)
  (import (chezscheme)
          (atelier-kame util))


  (define (title)
      (newline)
      (display "🐢🐢🐢🐢🐢🐢🐢🐢🐢🐢🐢🐢🐢🐢🐢\n\n")

      (display "     Prisoner's Dilemma\n\n")
      
      (display "🐢🐢🐢🐢🐢🐢🐢🐢🐢🐢🐢🐢🐢🐢🐢\n\n"))

  (define (print-games games n)
    (cond ((null? games) #t)
          (else
            (display (concat (to-string n) ": " (car games) "\n"))
            (print-games (cdr games) (+ n 1)))))

  (define (please-select)
    (display "\n🐢 please select a game file: "))

  (define (print-result lst)
    (newline)
    (display "🐢 result: ")
    (display lst)
    (newline)
    (newline))

)
