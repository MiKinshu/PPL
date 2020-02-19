(define (input a b) 
    (if (equal? b 0)
       1
     (* a (input a (- b 1)))
    )
 )
