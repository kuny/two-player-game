
(import (chezscheme)
        (atelier-kame util)
        (pdilemma view)
        (pdilemma core)
        (pdilemma strategy))

(define p1 'maximin)
; (define p1 'maximax)
; (define p1 'minimax)
; (define p1 'nash)

(define p2 'maximin)
; (define p2 'minimax)
; (define p2 'maximax)
; (define p2 'nash)

(define games (get-games))
(define profiles (get-profiles))

(define (read-choice n)
  (please-select)
  (let* ((s (get-line (current-input-port)))
         (k (and s (to-number s))))
    (cond
      ((and k (integer? k) (<= 1 k) (<= k n)) (- k 1))
      (else (error 'read-choice "Invalid selection: ~a" s)))))

(define (select-game)
  (concat "./data/"
          (list-ref games (read-choice (length games)))))

(define (main)
  (title)
  (print-games games 1)
  (initialize-game (select-game))
  (let ((p1-action (strategy player1 p1))
        (p2-action (strategy player2 p2)))
    (play player1 p1-action p2-action print-result)))

(main)

