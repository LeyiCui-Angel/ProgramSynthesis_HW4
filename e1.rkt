#lang rosette/safe

(define-symbolic n integer?)
(define-symbolic arr (Listof Integer))

(define (sum-even arr)
  (foldl (lambda (x acc)
           (if (even? x)
               (+ x acc)
               acc))
         0
         arr))

(solve (assert (= n (length arr)))
       (assert (= n 10))
       (assert (<= (apply max arr) 100))
       (assert (>= (apply min arr) 0))
       (assert (= (sum-even arr) 42))
       arr))