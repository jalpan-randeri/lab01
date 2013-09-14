;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |10|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require rackunit)
(require rackunit/text-ui)

; sum-large : Number Number Number -> Number
; GIVEN: Any three number as argument
; RETURNS: Number as sum of largest two number from the input
; Example:
; (sum 1 2 9)  => 11
; (sum 10 8 1) => 18
;
(define (sum-large a b c)
  (- (+ a (+ b c)) (min a b c)))

(define-test-suite test-sum
  (check-equal? (sum-large 2 9 1) 11 "assending list case failed")
  (check-equal? (sum-large 10 8 1) 18 "descending list case failed")
  (check-equal? (sum-large 0 0 0) 0 "same number case failed"))

(run-tests test-sum)