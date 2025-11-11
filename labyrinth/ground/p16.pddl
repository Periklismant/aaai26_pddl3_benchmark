(define (problem labyrinthsize5rotations0seed110)
(:domain labyrinth)
(:objects
	pos0 pos1 pos2 pos3 pos4  - gridpos
	card0 card1 card2 card3 card4 card5 card6 card7 card8 card9 card10 card11 card12 card13 card14 card15 card16 card17 card18 card19 card20 card21 card22 card23 card24  - card
)
(:init
	(MAXPOS pos4)
	(MINPOS pos0)

	(NEXT pos1 pos0)
	(NEXT pos2 pos1)
	(NEXT pos3 pos2)
	(NEXT pos4 pos3)

	(cardat card0 pos0 pos0)
	(cardat card1 pos1 pos0)
	(cardat card2 pos2 pos0)
	(cardat card3 pos3 pos0)
	(cardat card4 pos4 pos0)
	(cardat card5 pos0 pos1)
	(cardat card6 pos1 pos1)
	(cardat card7 pos2 pos1)
	(cardat card8 pos3 pos1)
	(cardat card9 pos4 pos1)
	(cardat card10 pos0 pos2)
	(cardat card11 pos1 pos2)
	(cardat card12 pos2 pos2)
	(cardat card13 pos3 pos2)
	(cardat card14 pos4 pos2)
	(cardat card15 pos0 pos3)
	(cardat card16 pos1 pos3)
	(cardat card17 pos2 pos3)
	(cardat card18 pos3 pos3)
	(cardat card19 pos4 pos3)
	(cardat card20 pos0 pos4)
	(cardat card21 pos1 pos4)
	(cardat card22 pos2 pos4)
	(cardat card23 pos3 pos4)
	(cardat card24 pos4 pos4)

	(BLOCKED card0 S)
	(BLOCKED card0 W)

	(BLOCKED card1 N)

	(BLOCKED card2 N)

	(BLOCKED card3 S)


	(BLOCKED card5 W)

	(BLOCKED card6 N)
	(BLOCKED card6 S)

	(BLOCKED card7 N)
	(BLOCKED card7 S)

	(BLOCKED card8 N)

	(BLOCKED card9 E)
	(BLOCKED card9 W)

	(BLOCKED card10 N)

	(BLOCKED card11 S)
	(BLOCKED card11 W)

	(BLOCKED card12 S)

	(BLOCKED card13 S)
	(BLOCKED card13 W)


	(BLOCKED card15 S)

	(BLOCKED card16 W)

	(BLOCKED card17 E)
	(BLOCKED card17 W)

	(BLOCKED card18 E)

	(BLOCKED card19 E)
	(BLOCKED card19 W)

	(BLOCKED card20 E)

	(BLOCKED card21 S)

	(BLOCKED card22 N)
	(BLOCKED card22 S)

	(BLOCKED card23 N)
	(BLOCKED card23 W)

	(BLOCKED card24 E)
	(BLOCKED card24 W)


	(robotat card0)

)
(:goal
	(and
		(left)
	)
)
 (:constraints (sometime (robotat card2)) (sometime-before (robotat card2) (or (cardat card2 pos1 pos0) (cardat card1 pos0 pos1))))
)
