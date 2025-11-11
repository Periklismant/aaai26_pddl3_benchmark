(define (problem labyrinthsize5rotations0seed112)
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

	(BLOCKED card0 E)
	(BLOCKED card0 W)

	(BLOCKED card1 N)
	(BLOCKED card1 W)

	(BLOCKED card2 N)
	(BLOCKED card2 W)

	(BLOCKED card3 N)
	(BLOCKED card3 W)

	(BLOCKED card4 N)
	(BLOCKED card4 S)

	(BLOCKED card5 E)
	(BLOCKED card5 W)

	(BLOCKED card6 S)

	(BLOCKED card7 N)

	(BLOCKED card8 N)
	(BLOCKED card8 S)

	(BLOCKED card9 N)
	(BLOCKED card9 S)

	(BLOCKED card10 W)

	(BLOCKED card11 N)
	(BLOCKED card11 S)

	(BLOCKED card12 W)

	(BLOCKED card13 W)

	(BLOCKED card14 E)

	(BLOCKED card15 E)
	(BLOCKED card15 W)

	(BLOCKED card16 N)
	(BLOCKED card16 W)

	(BLOCKED card17 N)
	(BLOCKED card17 E)

	(BLOCKED card18 S)
	(BLOCKED card18 W)

	(BLOCKED card19 E)
	(BLOCKED card19 W)

	(BLOCKED card20 S)
	(BLOCKED card20 W)

	(BLOCKED card21 S)

	(BLOCKED card22 S)

	(BLOCKED card23 S)

	(BLOCKED card24 E)


	(robotat card0)

)
(:goal
	(and
		(left)
	)
)
(:constraints (sometime (robotat card1)) (sometime-before (robotat card1) (exists (?pos1 - gridpos) (exists (?rightpos1 - gridpos) (and (next ?pos1 ?rightpos1) (cardat card0 ?pos1 pos0) (cardat card5 ?rightpos1 pos0))))))
)
