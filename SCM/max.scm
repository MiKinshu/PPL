(define (max list)
	(COND
		((NULL? list) '())
		((NULL? (CDR list)) (CAR list))
		((>(CAR list) (max(CDR list)))(CAR list))
		(ELSE (max(CDR list)))
		)
)

