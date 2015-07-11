(define (simpsion f a b n)
 	(define (iter f a dx i n)
   		(if (= n i)
	  		(f (+ a (* i dx)))
	  		(if (= 1 (remainder i 2))
	  			(+ (iter f a dx (+ i 1) n) (* 4 (f (+ a (* dx i)))))
	  			(+ (iter f a dx (+ i 1) n) (* 2 (f (+ a (* dx i)))))
	  		)
   		)
   	)
 
 	(* (/ (- b a) (* 3 n)) (+ (f a) (iter f a (/ (- b a) n) 1 n)))
)

(define (f x)
	(* x x x)
)