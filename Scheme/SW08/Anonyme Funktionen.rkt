;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |Anonyme Funktionen|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define x 1)
(define y 5)
((lambda (x y)(+ (* 2 x) y))y x)
((lambda (a b)(+ (* 2 x) y))y x)

;Beim ersten Aufruf werden die Parameter verwendet.
;Beim zweiten Aufruf sucht er die definition von x und y ausserhalb.