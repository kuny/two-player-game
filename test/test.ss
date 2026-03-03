(import (chezscheme)
        (atelier-kame test)
        (pdilemma util))

(assert-equal (pair-up '(1 2 3 4 5 6)) '((1 2) (3 4) (5 6)) "expect ((1 2) (3 4) (5 6))")

(assert-equal (transpose 
                 '(((1 2) (3 4))
                  ((5 6) (7 8))))
                '(((2 1) (6 5))
                  ((4 3) (8 7)))
                "expect (((2 1) (6 5)) ((4 3) (8 7)))")

(ok)
