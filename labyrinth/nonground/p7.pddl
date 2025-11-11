(define (problem labyrinthsize3rotations1seed4problem)
 (:domain labyrinthsize3rotations1seed4domain)
 (:objects
   card0 card1 card2 card3 card4 card5 card6 card7 card8 - card
   pos0 pos1 pos2 - gridpos
 )
 (:init (maxpos pos2) (minpos pos0) (next pos1 pos0) (next pos2 pos1) (cardat card0 pos0 pos0) (cardat card1 pos1 pos0) (cardat card2 pos2 pos0) (cardat card4 pos0 pos1) (cardat card5 pos1 pos1) (cardat card3 pos2 pos1) (cardat card6 pos0 pos2) (cardat card7 pos1 pos2) (cardat card8 pos2 pos2) (blocked card0 n) (blocked card0 e) (blocked card1 n) (blocked card1 s) (blocked card2 w) (blocked card4 n) (blocked card4 s) (blocked card5 n) (blocked card5 e) (blocked card3 s) (blocked card3 w) (blocked card6 n) (blocked card6 e) (blocked card7 n) (blocked card7 e) (blocked card8 e) (blocked card8 w) (robotat card0))
 (:goal (and (left)))
 (:constraints (sometime (exists (?pos1 - gridpos) (exists (?bottompos1 - gridpos) (and (next ?pos1 ?bottompos1) (cardat card2 pos0 ?pos1) (cardat card1 pos0 ?bottompos1))))))
)
