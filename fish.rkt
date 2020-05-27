#lang racket/base
(require racket/class
         racket/match
         racket/draw
         racket/math
         mrlib/include-bitmap
         pict ppict/2)

(define b0 (include-bitmap (lib "drracket/drracket.png")))
(define bdc (new bitmap-dc% (bitmap b0)))

(define bw (send b0 get-width))
(define bh (send b0 get-height))

(define the-scale 4)
(define fish-scale (make-parameter 1))

(define (color-at x y)
  (cond [#t ;; (< (random) 0.98)
         (define x* (inexact->exact (round (* (- x 0.05) bw))))
         (define y* (inexact->exact (round (* y bh))))
         (define c (new color%))
         (send bdc get-pixel (max 0 x*) (max 0 y*) c)
         c]
        [else
         (make-object color% "white")]))

(define (random-fish x y)
  (define-values (w h)
    (case (random 4)
      [(0) (values 20 15)]
      [(1) (values 40 30)]
      [(2) (values 25 25)]
      [(3) (values 25 20)]))
  (define c (color-at x y))
  (define ec "darkgray") ;; (make-object color% (send c blue) (- 255 (send c green)) (send c red)))
  (define dir 'left) ;; (case (random 2) [(0) 'left] [(1) 'right]))
  (cond [(> (+ (send c red) (send c blue) (send c green)) 200)
         (scale (standard-fish w h #:color c #:eye-color ec #:direction dir) (fish-scale))]
        [else (blank)]))

(define (jitter s) (* s (- (random) 0.5)))

(define base (scale (blank bw bh) the-scale))

(define (add-rect base steps)
  (define delta (/ steps))
  (for/fold ([base base]) ([x (in-range 0 #;delta (+ 1 delta) delta)])
    (for/fold ([base base]) ([y (in-range 0 #;delta (+ 1 delta) delta)])
      (define x* (+ x (jitter (/ steps))))
      (define y* (+ y (jitter (/ steps))))
      (ppict-do base #:go (coord x* y* 'cc) (random-fish x* y*)))))

(define 2pi (* 2 pi))

(define (add-rad base steps)
  (define delta (/ 2pi steps))
  (for/fold ([base base]) ([ang (in-range 0 2pi delta)])
    (define r (* 0.5 (sqrt (random))))
    (define x* (+ 0.5 (* r (cos ang)) #;(jitter (/ steps))))
    (define y* (+ 0.5 (* r (sin ang)) #;(jitter (/ steps))))
    (ppict-do base #:go (coord x* y* 'cc) (random-fish x* y*))))

(define (add-random base nfish)
  (for/fold ([base base]) ([i (in-range nfish)])
    (define x (random))
    (define y (random))
    (ppict-do base #:go (coord x y 'cc) (random-fish x y))))

(define SEED 42)

(define (logo instrs)
  (random-seed SEED)
  (for/fold ([p base]) ([instr (in-list instrs)])
    (match instr
      [(list 'seed seed)   (random-seed seed) p]
      [(list 'set s)       (fish-scale s) p]
      [(list 'cell factor) (cellophane p factor)]
      [(list 'rect nsteps) (add-rect p nsteps)]
      [(list 'rad nsteps)  (add-rad p nsteps)]
      [(list 'rand nfish)  (add-random p nfish)])))

;; A nice sparse school
;(inset (logo '((set 3/2) (rect 10))) 50)

;; A nice dense school
(define dense (inset (logo '((set 1) (rect 20))) 50))

(send (pict->bitmap dense) save-file "dense.png" 'png)