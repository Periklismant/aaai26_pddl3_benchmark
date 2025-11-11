(define (problem labyrinthsize4rotations0seed1600)
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

	(BLOCKED card0 W)

	(BLOCKED card1 N)

	(BLOCKED card2 N)
	(BLOCKED card2 E)

	(BLOCKED card3 S)
	(BLOCKED card3 W)


	(BLOCKED card5 N)
	(BLOCKED card5 S)

	(BLOCKED card6 S)
	(BLOCKED card6 W)

	(BLOCKED card7 E)

	(BLOCKED card8 S)
	(BLOCKED card8 W)

	(BLOCKED card9 E)
	(BLOCKED card9 S)

	(BLOCKED card10 E)
	(BLOCKED card10 S)

	(BLOCKED card11 E)

	(BLOCKED card12 S)
	(BLOCKED card12 W)

	(BLOCKED card13 N)
	(BLOCKED card13 W)

	(BLOCKED card14 N)



	(robotat card0)

)
(:goal
	(and
		(left)
	)
)
(:constraints (sometime (robotat card5)))
)

