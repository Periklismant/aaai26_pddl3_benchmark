(define (problem labyrinthsize4rotations0seed90)
(:domain labyrinth)
(:objects
	pos0 pos1 pos2 pos3  - gridpos
	card0 card1 card2 card3 card4 card5 card6 card7 card8 card9 card10 card11 card12 card13 card14 card15  - card
)
(:init
	(MAXPOS pos3)
	(MINPOS pos0)

	(NEXT pos1 pos0)
	(NEXT pos2 pos1)
	(NEXT pos3 pos2)

	(cardat card0 pos0 pos0)
	(cardat card1 pos1 pos0)
	(cardat card2 pos2 pos0)
	(cardat card3 pos3 pos0)
	(cardat card4 pos0 pos1)
	(cardat card5 pos1 pos1)
	(cardat card6 pos2 pos1)
	(cardat card7 pos3 pos1)
	(cardat card8 pos0 pos2)
	(cardat card9 pos1 pos2)
	(cardat card10 pos2 pos2)
	(cardat card11 pos3 pos2)
	(cardat card12 pos0 pos3)
	(cardat card13 pos1 pos3)
	(cardat card14 pos2 pos3)
	(cardat card15 pos3 pos3)

	(BLOCKED card0 E)

	(BLOCKED card1 N)
	(BLOCKED card1 E)

	(BLOCKED card2 N)
	(BLOCKED card2 S)

	(BLOCKED card3 E)

	(BLOCKED card4 W)

	(BLOCKED card5 S)

	(BLOCKED card6 N)
	(BLOCKED card6 S)

	(BLOCKED card7 E)
	(BLOCKED card7 S)

	(BLOCKED card8 W)

	(BLOCKED card9 W)

	(BLOCKED card10 N)
	(BLOCKED card10 E)

	(BLOCKED card11 N)
	(BLOCKED card11 W)

	(BLOCKED card12 S)
	(BLOCKED card12 W)

	(BLOCKED card13 E)
	(BLOCKED card13 S)

	(BLOCKED card14 S)
	(BLOCKED card14 W)

	(BLOCKED card15 N)
	(BLOCKED card15 E)


	(robotat card0)

)
(:goal
	(and
		(left)
	)
)
    (:constraints (always (not (robotat card5))))
)
