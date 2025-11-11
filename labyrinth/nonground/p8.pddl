(define (problem labyrinthsize3rotations1seed5problem)
 (:domain labyrinthsize3rotations1seed5domain)
 (:objects
   card0 card1 card2 card3 card4 card5 card6 card7 card8 - card
   pos0 pos1 pos2 - gridpos
 )
 (:init (maxpos pos2) (minpos pos0) (next pos1 pos0) (next pos2 pos1) (cardat card0 pos0 pos0) (cardat card4 pos1 pos0) (cardat card2 pos2 pos0) (cardat card3 pos0 pos1) (cardat card7 pos1 pos1) (cardat card5 pos2 pos1) (cardat card6 pos0 pos2) (cardat card1 pos1 pos2) (cardat card8 pos2 pos2) (blocked card0 e) (blocked card0 w) (blocked card4 n) (blocked card4 w) (blocked card2 n) (blocked card2 w) (blocked card3 e) (blocked card3 w) (blocked card7 n) (blocked card7 s) (blocked card5 e) (blocked card5 w) (blocked card6 s) (blocked card6 w) (blocked card1 n) (blocked card1 e) (blocked card8 n) (blocked card8 e) (robotat card0))
 (:goal (and (left)))
 (:constraints (sometime (robotat card1)) (sometime-before (robotat card1) (exists (?pos1 - gridpos) (exists (?bottompos1 - gridpos) (and (next ?pos1 ?bottompos1) (cardat card2 pos0 ?pos1) (cardat card1 pos0 ?bottompos1))))))
)
