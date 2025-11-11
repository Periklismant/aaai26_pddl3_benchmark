(define (problem labyrinthsize6rotations0seed113)
(:domain labyrinth)
(:objects
	pos0 pos1 pos2 pos3 pos4 pos5  - gridpos
	card0 card1 card2 card3 card4 card5 card6 card7 card8 card9 card10 card11 card12 card13 card14 card15 card16 card17 card18 card19 card20 card21 card22 card23 card24 card25 card26 card27 card28 card29 card30 card31 card32 card33 card34 card35  - card
)
(:init
	(MAXPOS pos5)
	(MINPOS pos0)

	(NEXT pos1 pos0)
	(NEXT pos2 pos1)
	(NEXT pos3 pos2)
	(NEXT pos4 pos3)
	(NEXT pos5 pos4)

	(cardat card0 pos0 pos0)
	(cardat card1 pos1 pos0)
	(cardat card2 pos2 pos0)
	(cardat card3 pos3 pos0)
	(cardat card4 pos4 pos0)
	(cardat card5 pos5 pos0)
	(cardat card6 pos0 pos1)
	(cardat card7 pos1 pos1)
	(cardat card8 pos2 pos1)
	(cardat card9 pos3 pos1)
	(cardat card10 pos4 pos1)
	(cardat card11 pos5 pos1)
	(cardat card12 pos0 pos2)
	(cardat card13 pos1 pos2)
	(cardat card14 pos2 pos2)
	(cardat card15 pos3 pos2)
	(cardat card16 pos4 pos2)
	(cardat card17 pos5 pos2)
	(cardat card18 pos0 pos3)
	(cardat card19 pos1 pos3)
	(cardat card20 pos2 pos3)
	(cardat card21 pos3 pos3)
	(cardat card22 pos4 pos3)
	(cardat card23 pos5 pos3)
	(cardat card24 pos0 pos4)
	(cardat card25 pos1 pos4)
	(cardat card26 pos2 pos4)
	(cardat card27 pos3 pos4)
	(cardat card28 pos4 pos4)
	(cardat card29 pos5 pos4)
	(cardat card30 pos0 pos5)
	(cardat card31 pos1 pos5)
	(cardat card32 pos2 pos5)
	(cardat card33 pos3 pos5)
	(cardat card34 pos4 pos5)
	(cardat card35 pos5 pos5)

	(BLOCKED card0 N)
	(BLOCKED card0 W)

	(BLOCKED card1 W)

	(BLOCKED card2 N)
	(BLOCKED card2 S)

	(BLOCKED card3 N)

	(BLOCKED card4 N)
	(BLOCKED card4 S)

	(BLOCKED card5 N)
	(BLOCKED card5 E)

	(BLOCKED card6 W)

	(BLOCKED card7 E)
	(BLOCKED card7 S)

	(BLOCKED card8 N)
	(BLOCKED card8 S)

	(BLOCKED card9 N)
	(BLOCKED card9 E)

	(BLOCKED card10 W)

	(BLOCKED card11 E)
	(BLOCKED card11 S)

	(BLOCKED card12 N)

	(BLOCKED card13 N)
	(BLOCKED card13 E)

	(BLOCKED card14 S)
	(BLOCKED card14 W)

	(BLOCKED card15 N)

	(BLOCKED card16 S)
	(BLOCKED card16 W)

	(BLOCKED card17 N)

	(BLOCKED card18 N)
	(BLOCKED card18 E)

	(BLOCKED card19 E)
	(BLOCKED card19 S)

	(BLOCKED card20 S)
	(BLOCKED card20 W)

	(BLOCKED card21 N)
	(BLOCKED card21 S)

	(BLOCKED card22 S)
	(BLOCKED card22 W)

	(BLOCKED card23 E)
	(BLOCKED card23 W)

	(BLOCKED card24 N)
	(BLOCKED card24 W)

	(BLOCKED card25 E)

	(BLOCKED card26 N)
	(BLOCKED card26 S)

	(BLOCKED card27 S)
	(BLOCKED card27 W)

	(BLOCKED card28 E)
	(BLOCKED card28 S)

	(BLOCKED card29 E)
	(BLOCKED card29 W)

	(BLOCKED card30 N)
	(BLOCKED card30 S)

	(BLOCKED card31 N)
	(BLOCKED card31 W)

	(BLOCKED card32 E)
	(BLOCKED card32 W)

	(BLOCKED card33 S)
	(BLOCKED card33 W)

	(BLOCKED card34 E)
	(BLOCKED card34 S)

	(BLOCKED card35 E)
	(BLOCKED card35 W)


	(robotat card0)

)
(:goal
	(and
		(left)
	)
)
(:constraints (sometime (robotat card5)) (sometime-after (robotat card1) (exists (?pos1 - gridpos) (exists (?rightpos1 - gridpos) (and (next ?pos1 ?rightpos1) (cardat card0 ?pos1 pos0) (cardat card5 ?rightpos1 pos0))))))
)
