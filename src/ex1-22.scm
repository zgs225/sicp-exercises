(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (real-time-clock)))

(define (start-prime-test n start-time)
  (if (prime? n)
      (report-prime (- (real-time-clock) start-time))))

(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time))

(define (search-for-primes start end)
  (define (search-for-primes-iter current)
    (if (odd? current) (timed-prime-test current))
    (if (< current end) (search-for-primes-iter (+ current 1))))

  (search-for-primes-iter start))
