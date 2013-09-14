;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |08|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; area: Number -> Number
; GIVEN: Number as radius r of circle.
; RETURN: Number as area using equation 3.1415 * r ^2
; Examples:
; (area 1) => 3.1415
; (area 5) => 78.5375
; (area 7) => 153.9335

(define (area r)
  (* 3.1415 (* r r)))


