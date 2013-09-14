;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |01|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require rackunit)
(require rackunit/text-ui)

; comp-sec: Number -> Number
; Given: a year in number as an argument
; returns: total seconds of a leap year
; usage: (comp-sec 2000) => 527040

(define (comp-sec year)
      (* (* 24 366) 60))
    

(define-test-suite new-test
  (check-equal? (comp-sec 1231) 527040 "Test case 1 failure "))
  
(run-tests new-test)    
                  