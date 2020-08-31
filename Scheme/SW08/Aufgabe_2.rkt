;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname Aufgabe_2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define (fib n)
  (cond
    ((or (= n 0) (= n 1)) n)
    (else (+ (fib (- n 1))
             (fib (- n 2)))))
)

; a)
(define (fib-acc n)
  (local
    (
     (define (fib n prev acc)
       (cond
         ((or (= n 0) (= n 1)) acc)
         (else
           (fib (- n 1) acc (+ prev acc))))))
    (fib n 0 1)))

; b)
(define test-val 40)
(time (fib test-val))    ; 44388 ms
(time (fib-acc test-val)) ; 1 ms