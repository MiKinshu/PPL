(DEFINE (leap? year)
	(COND
		((ZERO? (MODULO year 400)) #T)
		((ZERO? (MODULO year 100)) #F)
		(ELSE (ZERO? (MODULO year 4)))
	)
)

;EVEN?
;ODD?