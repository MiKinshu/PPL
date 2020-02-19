(DEFINE (max list)

         (COND

                        ((NULL? list) ‘())

                        ((NULL? (CDR list)) (CAR list))

                        ((> (CAR list) (max (CDR list))) (CAR list))

                        (ELSE (max (CDR list)))

         )

      ) 

(DEFINE (min list)

         (COND

                        ((NULL? list) ‘())

                        ((NULL? (CDR list)) (CAR list))

                        ((< (CAR list) (min (CDR list))) (CAR list))

                        (ELSE (min (CDR list)))

         )

      )


(DEFINE (minmax  list) (CONS (min list) (CONS (max list) '())))