;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname delete) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (delete item a-list)
  (cond((empty? a-list)empty)
       ((eq? item (first a-list))(delete item (rest a-list)))
       (else(cons (first a-list) (delete item (rest a-list))))))

(delete 3 (list 1 2 3 4)) ; '(1 2 4)
(delete 'c '(a b c d)) ; '(a b d)
(delete 'f '(a b c d)) ; '(a b c d)
(delete 'f empty) ; '()
(delete 'f (list 1 2 3 4)) ; '(1 2 3 4)