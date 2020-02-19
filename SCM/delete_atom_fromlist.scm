(define (func number1 list1)
	(cond
		((NULL? list1) '())
		((list? (car list1)) (cons (func number1 (car list1)) (func number1 (cdr list1))))
		((= number1 (car list1))(func number1 (cdr list1)))
		(else(cons (car list1) (func number1 (cdr list1))))
	)
)
