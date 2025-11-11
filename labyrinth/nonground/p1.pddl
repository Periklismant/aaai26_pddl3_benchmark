(define (problem labyrinthsize2rotations0seed202problem)
 (:domain labyrinthsize2rotations0seed202domain)
 (:objects
   card0 card1 card2 card3 - card
   pos0 pos1 - gridpos
 )
 (:init (maxpos pos1) (minpos pos0) (next pos1 pos0) (cardat card0 pos0 pos0) (cardat card1 pos1 pos0) (cardat card2 pos0 pos1) (cardat card3 pos1 pos1) (blocked card0 e) (blocked card0 w) (blocked card1 n) (blocked card1 s) (blocked card2 s) (blocked card2 w) (blocked card3 n) (robotat card0))
 (:goal (and (left)))
 (:constraints (sometime (exists (?pos1 - gridpos) (exists (?leftpos1 - gridpos) (and (next ?leftpos1 ?pos1) (cardat card2 ?pos1 pos1) (cardat card1 ?leftpos1 pos1))))))
)
