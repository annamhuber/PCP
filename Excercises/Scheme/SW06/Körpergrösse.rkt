;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Körpergrösse) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define-struct human (alter geschlecht oberschenkelknochenlaenge))
(define a(make-human 16 "weiblich" 10))
(define(b-lenght humane)(if (string=? (human-geschlecht humane) "weiblich")(+ 61.412 (* 2.317 (human-oberschenkelknochenlaenge humane)))(+ 69.089(* 2.238 (human-oberschenkelknochenlaenge humane)))))
(b-lenght a)
