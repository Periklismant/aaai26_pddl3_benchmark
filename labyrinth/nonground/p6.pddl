(define (problem labyrinthsize3rotations1seed2problem)
 (:domain labyrinthsize3rotations1seed2domain)
 (:objects
   card0 card1 card2 card3 card4 card5 card6 card7 card8 - card
   pos0 pos1 pos2 - gridpos
 )
 (:init (maxpos pos2) (minpos pos0) (next pos1 pos0) (next pos2 pos1) (cardat card0 pos0 pos0) (cardat card1 pos1 pos0) (cardat card2 pos2 pos0) (cardat card4 pos0 pos1) (cardat card5 pos1 pos1) (cardat card3 pos2 pos1) (cardat card6 pos0 pos2) (cardat card7 pos1 pos2) (cardat card8 pos2 pos2) (blocked card0 n) (blocked card0 w) (blocked card1 n) (blocked card1 s) (blocked card2 e) (blocked card5 w) (blocked card3 s) (blocked card3 w) (blocked card6 e) (blocked card6 s) (blocked card7 e) (blocked card7 s) (blocked card8 e) (blocked card8 w) (robotat card0))
 (:goal (and (left)))
 (:constraints (sometime (exists (?pos1 - gridpos) (exists (?rightpos1 - gridpos) (exists (?pos2 - gridpos) (and (next ?pos1 ?rightpos1) (cardat     card0 ?pos1 ?pos2) (cardat card5 ?rightpos1 ?pos2)))))))
)
