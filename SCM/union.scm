(define (member atm list)
	(COND
	((NULL? list)(NOT #T))
	((EQ? atm (CAR list))#T)
	(ELSE(member atm (CDR list)))
	)
)
(define (union setlist1 setlist2)
	(COND
	  ((NULL? setlist1)setlist2)
	  ((member (CAR setlist1) setlist2) (union (CDR setlist1) setlist2))
	  (ELSE(CONS(CAR setlist1)setlist2) (union (CDR setlist1) setlist2))
	)
)
