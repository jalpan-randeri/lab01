;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |03|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require rackunit)
(require rackunit/text-ui)

; f->c: Number -> Number
; GIVEN : a temprature in degrees Fahrenhit as an argument
; RETURNS : the equivalent temprature in degree Celcius
; Examples :
; (f->c 32)  => 0
; (f->c 100) => 37.777777777778

(define (f->c farhenhit)
  (* (- farhenhit 32) (/ 5 9)))

(define-test-suite ftest
  (check-equal? (f->c 32) 0 "test case 32 failed")
  (check-equal? (f->c 100) (* (- 100 32) (/ 5 9)) "test case 100 failed"))

(run-tests ftest)