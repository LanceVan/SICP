(define (multiple a b c)
	(if (= b 1)
  		(+ a c)
  		(if (= 1 (remainder b 2))
	 		(multiple (+ a a) (/ (- b 1) 2) (+ c a))
	 		(multiple (+ a a) (/ b 2) c)
	 	)
  	)
)

