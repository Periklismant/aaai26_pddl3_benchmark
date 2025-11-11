(define (domain slitherlink)
(:requirements :typing :adl)

(:types
    node - object
    cell - object
    cellcapacitylevel - object
)

(:predicates
    ;; Ordering of cell capacities
    (CELLCAPACITYINC ?clower ?chigher - cellcapacitylevel)
    ;; Current cell capacity, i.e., how many links can be placed around the cell
    (CELLCAPACITY ?c - cell ?cap - cellcapacitylevel)
    ;; The edge between nodes ?n1 ?n2 is an edge bordering cells ?c1 and ?c2
    (CELLEDGE ?c1 ?c2 - cell ?n1 ?n2 - node)
    ;; The node (vertex) is not connected to any link
    (nodedegree0 ?n - node)
    ;; The node is connected to exactly one link
    (nodedegree1 ?n - node)
    ;; The node is connected to exactly two links
    (nodedegree2 ?n - node)
    ;; ?n1 and ?n2 are (slither)linked
    (linked ?n1 ?n2 - node)
    ;; Disables link00 action after its first use
    (disablelink00)
)

;; This action is used only at the beginning of a plan. Disabling it (using
;; the predicate disablelink00) after its first use ensures that the
;; solution is a single cycle.
;; Without it, the plan could produce several closed loops. For example:
;; input:      possible incorrect solution:     correct solution:
;; + + + +                ++ + +                   ++++
;;  3 . .                 |3|. .                    |3 . .|
;; + + + +                + + ++                   ++ ++
;;  . . 3                 |.|.|3|                    .|.|3 
;; + + + +                ++ + +                   ++ ++
;;  . 1 3                  . 1|3|                   |. 1 3|
;; + + + +                + + ++                   ++++
;;
;; Another possibility would be to remove this action entirely and put one
;; starting link in the initial state. This can be accomplished without
;; actually changing this domain file by simply putting (disablelink00)
;; in the initial state.
;;
;; A yet another possibility would be to add a (zerocost) verification
;; procedure that traverses the links and makes sure they form a single cycle.
;; We decided not to go in this direction here.
;;
(:action link00
    :parameters (?n1 - node ?n2 - node
                 ?c1 - cell ?c1capfrom ?c1capto - cellcapacitylevel
                 ?c2 - cell ?c2capfrom ?c2capto - cellcapacitylevel)
    :precondition
        (and
            (not (linked ?n1 ?n2))
            (nodedegree0 ?n1)
            (nodedegree0 ?n2)
            (CELLEDGE ?c1 ?c2 ?n1 ?n2)
            (CELLCAPACITY ?c1 ?c1capfrom)
            (CELLCAPACITY ?c2 ?c2capfrom)
            (CELLCAPACITYINC ?c1capto ?c1capfrom)
            (CELLCAPACITYINC ?c2capto ?c2capfrom)
            (not (disablelink00))
        )
    :effect
        (and
            (linked ?n1 ?n2)

            (not (nodedegree0 ?n1))
            (nodedegree1 ?n1)

            (not (nodedegree0 ?n2))
            (nodedegree1 ?n2)

            (not (CELLCAPACITY ?c1 ?c1capfrom))
            (CELLCAPACITY ?c1 ?c1capto)

            (not (CELLCAPACITY ?c2 ?c2capfrom))
            (CELLCAPACITY ?c2 ?c2capto)

            (disablelink00)
        )
)

(:action link01
    :parameters (?n1 - node ?n2 - node
                 ?c1 - cell ?c1capfrom ?c1capto - cellcapacitylevel
                 ?c2 - cell ?c2capfrom ?c2capto - cellcapacitylevel)
    :precondition
        (and
            (not (linked ?n1 ?n2))
            (nodedegree0 ?n1)
            (nodedegree1 ?n2)
            (CELLEDGE ?c1 ?c2 ?n1 ?n2)
            (CELLCAPACITY ?c1 ?c1capfrom)
            (CELLCAPACITY ?c2 ?c2capfrom)
            (CELLCAPACITYINC ?c1capto ?c1capfrom)
            (CELLCAPACITYINC ?c2capto ?c2capfrom)
        )
    :effect
        (and
            (linked ?n1 ?n2)

            (not (nodedegree0 ?n1))
            (nodedegree1 ?n1)

            (not (nodedegree1 ?n2))
            (nodedegree2 ?n2)

            (not (CELLCAPACITY ?c1 ?c1capfrom))
            (CELLCAPACITY ?c1 ?c1capto)

            (not (CELLCAPACITY ?c2 ?c2capfrom))
            (CELLCAPACITY ?c2 ?c2capto)
        )
)

(:action link10
    :parameters (?n1 - node ?n2 - node
                 ?c1 - cell ?c1capfrom ?c1capto - cellcapacitylevel
                 ?c2 - cell ?c2capfrom ?c2capto - cellcapacitylevel)
    :precondition
        (and
            (not (linked ?n1 ?n2))
            (nodedegree1 ?n1)
            (nodedegree0 ?n2)
            (CELLEDGE ?c1 ?c2 ?n1 ?n2)
            (CELLCAPACITY ?c1 ?c1capfrom)
            (CELLCAPACITY ?c2 ?c2capfrom)
            (CELLCAPACITYINC ?c1capto ?c1capfrom)
            (CELLCAPACITYINC ?c2capto ?c2capfrom)
        )
    :effect
        (and
            (linked ?n1 ?n2)

            (not (nodedegree1 ?n1))
            (nodedegree2 ?n1)

            (not (nodedegree0 ?n2))
            (nodedegree1 ?n2)

            (not (CELLCAPACITY ?c1 ?c1capfrom))
            (CELLCAPACITY ?c1 ?c1capto)

            (not (CELLCAPACITY ?c2 ?c2capfrom))
            (CELLCAPACITY ?c2 ?c2capto)
        )
)

(:action link11
    :parameters (?n1 - node ?n2 - node
                 ?c1 - cell ?c1capfrom ?c1capto - cellcapacitylevel
                 ?c2 - cell ?c2capfrom ?c2capto - cellcapacitylevel)
    :precondition
        (and
            (not (linked ?n1 ?n2))
            (nodedegree1 ?n1)
            (nodedegree1 ?n2)
            (CELLEDGE ?c1 ?c2 ?n1 ?n2)
            (CELLCAPACITY ?c1 ?c1capfrom)
            (CELLCAPACITY ?c2 ?c2capfrom)
            (CELLCAPACITYINC ?c1capto ?c1capfrom)
            (CELLCAPACITYINC ?c2capto ?c2capfrom)
        )
    :effect
        (and
            (linked ?n1 ?n2)

            (not (nodedegree1 ?n1))
            (nodedegree2 ?n1)

            (not (nodedegree1 ?n2))
            (nodedegree2 ?n2)

            (not (CELLCAPACITY ?c1 ?c1capfrom))
            (CELLCAPACITY ?c1 ?c1capto)

            (not (CELLCAPACITY ?c2 ?c2capfrom))
            (CELLCAPACITY ?c2 ?c2capto)
        )
)
)
