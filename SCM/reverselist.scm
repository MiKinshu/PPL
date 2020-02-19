(define (reverse lst)
  (reverse-helper lst '()))

(define (reverse-helper lst acc)
  (if (null? lst)
      acc
      (reverse-helper (cdr lst) (cons (car lst) acc))))
