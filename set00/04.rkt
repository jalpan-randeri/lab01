;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |04|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require rackunit)
(require rackunit/text-ui)

; tip : Number Number -> Number
; GIVEN: the amount of the bill in dollars and the
; percentage of tip
; RETURNS: the amount of the tip in dollars.
; Examples:
; (tip 10 0.15) => 1.5
; (tip 20 0.17) => 3.4

(define (tip amount per)
  (* amount per))

(define-test-suite test-tip
  (check-equal? (tip 10 0.15) 1.5 "test case 0.15 fail")
  (check-equal? (tip 20 0.17) 3.4 "test case 0.17 fail"))

(run-tests test-tip)
  
  