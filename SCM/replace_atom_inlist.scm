(define (func number1 number2 numberlist)
	(COND
	 ((NULL? numberlist) '())
	 ((list? (CAR numberlist)) (cons (func number1 number2 (car numberlist)) (func number1 number2 (cdr numberlist))))
	 ((= number1 (CAR numberlist)) (CONS number2 (func number1 number2 (CDR numberlist))))
	 (ELSE(CONS (CAR numberlist) (func number1 number2 (CDR numberlist))))
	)
)
