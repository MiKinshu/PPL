(define (su numberlist1 numberlist2)
    (if
    	(NULL? numberlist1) '()
    	(CONS (+ (CAR numberlist1) (CAR numberlist2)) (su (CDR numberlist1) (CDR numberlist2)))
    )
)
