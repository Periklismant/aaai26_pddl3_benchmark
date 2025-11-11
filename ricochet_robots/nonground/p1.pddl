(define (problem ricochet_robots_3x3_none_393276-problem)
 (:domain ricochet_robots_3x3_none_393276-domain)
 (:objects
   robot1 robot2 robot3 robot4 - robot
   cell11 cell12 cell13 cell21 cell22 cell23 cell31 cell32 cell33 - cell
   west east north south - direction
 )
 (:init (next cell11 cell12 south) (next cell12 cell13 south) (next cell21 cell22 south) (next cell22 cell23 south) (next cell31 cell32 south) (next cell32 cell33 south) (next cell13 cell12 north) (next cell12 cell11 north) (next cell23 cell22 north) (next cell22 cell21 north) (next cell33 cell32 north) (next cell32 cell31 north) (next cell11 cell21 east) (next cell21 cell31 east) (next cell12 cell22 east) (next cell22 cell32 east) (next cell13 cell23 east) (next cell23 cell33 east) (next cell31 cell21 west) (next cell21 cell11 west) (next cell32 cell22 west) (next cell22 cell12 west) (next cell33 cell23 west) (next cell23 cell13 west) (blocked cell11 north) (blocked cell13 south) (blocked cell21 north) (blocked cell23 south) (blocked cell31 north) (blocked cell33 south) (blocked cell11 west) (blocked cell31 east) (blocked cell12 west) (blocked cell32 east) (blocked cell13 west) (blocked cell33 east) (blocked cell13 east) (blocked cell23 west) (blocked cell12 east) (blocked cell22 west) (blocked cell11 south) (blocked cell12 north) (blocked cell22 east) (blocked cell32 west) (blocked cell33 west) (blocked cell23 east) (free cell13) (free cell22) (free cell23) (free cell32) (free cell33) (at_ robot1 cell11) (at_ robot2 cell12) (at_ robot3 cell21) (at_ robot4 cell31) (nothing_is_moving))
 (:goal (and (at_ robot4 cell22) (nothing_is_moving)))
 (:constraints (always (forall (?r - robot) (not (at_ ?r cell33)))))
)
