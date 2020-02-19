(define (mergelists list1 list2)
	(cond
		((null? list1) list2)
		((null? list2) list1)
		((< (car list1) (car list2)) (cons (car list1) (mergelists (cdr list1) list2)))
		(else(cons (car list2) (mergelists (cdr list2) list1)))
	)
)

(define (even list1)
   (cond
   	 ((null? list1) '())
   	 ((null? (cdr list1)) '())
   	 (else(cons (car (cdr list1)) (even (cdr (cdr list1)))))
   )
)

(define (odd list1)
	(cond
		((null? list1) '())
		((null? (cdr list1)) list list1)
		(else(cons (car list1) (odd (cdr (cdr list1)))))
	)
)


(define (mergesort list1)
	(cond
		((null? list1) list1)
		((null? (cdr list1)) list1)
		(else(mergelists (mergesort (odd list1)) (mergesort (even list1))))
	)
)
