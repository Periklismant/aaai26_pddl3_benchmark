(define (problem labyrinthsize2rotations0seed207problem)
 (:domain labyrinthsize2rotations0seed207domain)
 (:objects
   card0 card1 card2 card3 - card
   pos0 pos1 - gridpos
 )
 (:init (maxpos pos1) (minpos pos0) (next pos1 pos0) (cardat card0 pos0 pos0) (cardat card1 pos1 pos0) (cardat card2 pos0 pos1) (cardat card3 pos1 pos1) (blocked card0 s) (blocked card1 n) (blocked card1 e) (blocked card2 n) (blocked card2 w) (blocked card3 e) (blocked card3 w) (robotat card0))
 (:goal (and (left)))
 (:constraints (sometime (cardat card0 pos1 pos1)))
)
