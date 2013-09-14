;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |06|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require rackunit)
(require rackunit/text-ui)

; root: Number Nnmber Number -> Number
; GIVEN: quardatinc eq as ax*x + bx + c =0
; Number as non-zero constant (a) in qurdatic equation 
; Number as constant(b) in quardatic equation
; Number as constant(c) in quardatic equation

;(define (root a b c)
;  (/ 
;   (+ 
;    (- 0 b)(sqrt (- (* b b)(* 4 (* a c))))) 
;   (* 2 a))

; Example:
; (root 1 4 4) => -2
; (root 1 6 9) => -3

(define (root a b c)
  (/ 
   (+ 
    (- 0 b)(sqrt (- (* b b)(* 4 (* a c))))) 
   (* 2 a)))

(define-test-suite test-root
  (check-equal? (root 1 4 4) -2 "test -2 failed")
  (check-equal? (root 1 6 9) -3 "Test -3 failed"))

(run-tests test-root)