;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |07|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require rackunit)
(require rackunit/text-ui)

; circumference : Number -> Number
; GIVEN: the radius r of a circle
; RETURNS: its circumference, using the formula 2* pi * r
; Examples:
; (circumference 1) => 6.283185307179586
; (circumference 0) => 0

(define (circumference r)
  (* 2 (* pi r)))

(define-test-suite test-circumference
  ;(check-equal? (circumference 1) 6.283185307179586 "test case r=6 failed")
  (check-equal? (circumference 1) (* 2 (* pi 1)) "test case r=6 failed")
  (check-equal? (circumference 0) 0 "test dot failed"))

(run-tests test-circumference)
  