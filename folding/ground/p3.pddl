(define (problem folding_zigzag_3_2_56684problem)
 (:domain folding_zigzag_3_2_56684domain)
 (:objects
   n1 n2 n3 - node
   c1 c2 c3 c4 c5 - coord
 )
 (:init (nextdirection up clockwise right) (nextdirection up counterclockwise left) (nextdirection down clockwise left) (nextdirection down counterclockwise right) (nextdirection left clockwise up) (nextdirection left counterclockwise down) (nextdirection right clockwise down) (nextdirection right counterclockwise up) (coordinc c1 c2) (coordinc c2 c3) (coordinc c3 c4) (coordinc c4 c5) (connected n1 n2) (connected n2 n3) (endnode n3) (at n1 c3 c3) (at n2 c3 c4) (at n3 c3 c5) (heading n1 up) (heading n2 up) (free c1 c1) (free c1 c2) (free c1 c3) (free c1 c4) (free c1 c5) (free c2 c1) (free c2 c2) (free c2 c3) (free c2 c4) (free c2 c5) (free c3 c1) (free c3 c2) (free c4 c1) (free c4 c2) (free c4 c3) (free c4 c4) (free c4 c5) (free c5 c1) (free c5 c2) (free c5 c3) (free c5 c4) (free c5 c5))
 (:goal (and (at n1 c3 c3) (at n2 c4 c3) (at n3 c4 c4) (not (rotating))))
 (:constraints (sometime (not (free c5 c3))) (sometime-before (not (free c5 c3)) (or (heading n2 down) (at n3 c5 c4))))
)
