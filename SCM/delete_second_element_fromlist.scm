(define (func list1 number)
	(cond
	  ((null? list1) '())
	  ((= number 1) (cdr list1))
	  (else(cons (car list1) (func (cdr list1) (- number 1))))
	)
)
