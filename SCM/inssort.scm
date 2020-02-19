(DEFINE (insert item list)

    (COND

            ((NULL? list) (CONS item '()))

            ((< item (CAR list)) (CONS item list))

            (ELSE (CONS (CAR list) (insert item (CDR list))))

    )

)

 

(DEFINE (insertionSort list)

  (IF (NULL? list)

    '()

    (insert (CAR list) (insertionSort (CDR list)))

  )

)