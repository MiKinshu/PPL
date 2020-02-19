(define (remove numberlist)
  (if (NULl? (CDR numberlist))
  	'()
  	(cons (CAR numberlist) (remove (CDR numberlist)))
  	)
)

