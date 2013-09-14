;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |05|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require rackunit)
(require rackunit/text-ui)

; sq: Number-> Number
; GIVEN: Number as any number 
; RETURNS: Number which is the square of 
; the given number as an argument
; Example:
; (sq 2) => 4
; (sq 3) => 9

(define (sq x)
  (* x x))

(define-test-suite sq-test
  (check-equal? (sq 2) 4 " test 2 failed")
  (check-equal? (sq 3) 9 "test 3 failed"))

(run-tests sq-test)