(define (problem test)  (:domain Quantum)
  (:objects
  ;; logical qubits
  l0 l1 l2 l3 l4 - lqubit
  ;; physical qubits
  p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 - pqubit
  ;; layer depth
  d2 d4 d5 d7 d8 d10 d11 d13 - depth
  )
(:init
  ;; all physical qubits are not occupied, by default
  ;; all logical qubits are not occupied, by default
  ;; current depth is d0
  (current_depth d0)
  ;; connectivity graph
  (connected p1 p0)
  (connected p1 p2)
  (connected p2 p3)
  (connected p4 p3)
  (connected p4 p10)
  (connected p5 p4)
  (connected p5 p6)
  (connected p5 p9)
  (connected p6 p8)
  (connected p7 p8)
  (connected p9 p8)
  (connected p9 p10)
  (connected p11 p3)
  (connected p11 p10)
  (connected p11 p12)
  (connected p12 p2)
  (connected p13 p1)
  (connected p13 p12)
  ;; depths
  (next_depth d0 d2)
  (next_depth d2 d4)
  (next_depth d4 d5)
  (next_depth d5 d7)
  (next_depth d7 d8)
  (next_depth d8 d10)
  (next_depth d10 d11)
  (next_depth d11 d13)
  ;; listing required cnots
  (rcnot l0 l1 d2)
  (rcnot l0 l1 d4)
  (rcnot l1 l2 d5)
  (rcnot l1 l2 d7)
  (rcnot l2 l3 d8)
  (rcnot l2 l3 d10)
  (rcnot l3 l4 d11)
  (rcnot l3 l4 d13)
)
(:goal
  (and
  ;; depth 0, initial mapping
  (occupied_lqubit l0)
  (occupied_lqubit l1)
  (occupied_lqubit l2)
  (occupied_lqubit l3)
  (occupied_lqubit l4)
  ;; listing negated required cnots
 (not (rcnot l0 l1 d2))
 (not (rcnot l0 l1 d4))
 (not (rcnot l1 l2 d5))
 (not (rcnot l1 l2 d7))
 (not (rcnot l2 l3 d8))
 (not (rcnot l2 l3 d10))
 (not (rcnot l3 l4 d11))
 (not (rcnot l3 l4 d13))
  )
)
(:constraints (sometime (exists (?l1 - lqubit) (exists (?l2 - lqubit) (and (mapped ?l1  p1) (mapped ?l2 p2))))))
)
