(define (remove x lst)
  (cond
    ((null? lst) '())
    ((= x (car lst))(remove x (cdr lst)))
    (else (cons (car lst) (remove x (cdr lst))))))

(define (permute lst)
  (cond
    ((= (length lst) 1)(list lst))
    (else (apply append(map(lambda (i) (map (lambda (j)(cons i j))
                                            (permute (remove i lst))))lst)))))
