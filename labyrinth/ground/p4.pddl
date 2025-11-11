(define (problem labyrinthsize2rotations0seed206problem)
 (:domain labyrinth-domain)
 (:objects
   card0 card1 card2 card3 - card
   pos0 pos1 - gridpos
 )
 (:init (maxpos pos1) (minpos pos0) (next pos1 pos0) (cardat card0 pos0 pos0) (cardat card1 pos1 pos0) (cardat card2 pos0 pos1) (cardat card3 pos1 pos1) (blocked card0 n) (blocked card0 w) (blocked card1 n) (blocked card1 e) (blocked card2 e) (robotat card0))
 (:goal (and (left)))
 (:constraints (always (not (robotat card1))))
)
