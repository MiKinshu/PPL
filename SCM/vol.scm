(define (volume radius)
  (cond 
  	((> radius 0) (*(*(/ 4 3) 3.14)(* radius radius radius)))
  	(else -1)
  )
)