;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |02|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require rackunit)
(require rackunit/text-ui)

; test-equal : Number  -> Boolean
; Given: a number 
; Returns: results of comprasion that if two values are equal in boolean
; Example: 
; (test-equal 10) => true

(define (test-equal x)
  (> (/ 100 3) (/ (+ 100 3) (+ 3 3))))

(define-test-suite new-test
  (check-equal? (test-equal 3) true "Test failure"))
  
(run-tests new-test)
  