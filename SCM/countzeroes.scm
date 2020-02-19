(DEFINE (zerocount  numberlist)

     (COND

            ((NULL? numberlist) 0)

            ((ZERO? (CAR numberlist)) (+ 1 (zerocount (CDR numberlist))))

            (ELSE (zerocount (CDR numberlist)))

     )

)