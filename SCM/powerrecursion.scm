(define (pow-tr2 a b)
  (define (pow-tr2-h b result)
    (if (= b 0)
        result
        (pow-tr2-h (- b 1) (* result a))))
  (pow-tr2-h b 1))
