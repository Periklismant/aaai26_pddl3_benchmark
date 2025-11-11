;; generatepddl.py gen 3 2 problems/p1.pddl plan
;;
;;  2.   
;;  2.   
;;  32   
;;
;;    ++
;;   2|.|
;;  ++ +
;;  |2 .|
;;  + ++
;;  |3|2 
;;  ++  

(define (problem sliterlink225018)
(:domain slitherlink)

(:objects
    cap0 cap1 cap2 cap3 cap4 - cellcapacitylevel
    n00 n01 n02 n10 n11 n12 n20 n21 n22 n30 n31 n32 - node
    cell00 cell01 cell10 cell11 cell20 cell21 celloutside0left celloutside0right celloutside1left celloutside1right celloutside2left celloutside2right celloutside0up celloutside0down celloutside1up celloutside1down - cell
)

(:init
    (CELLCAPACITYINC cap0 cap1)
    (CELLCAPACITYINC cap1 cap2)
    (CELLCAPACITYINC cap2 cap3)
    (CELLCAPACITYINC cap3 cap4)

    (CELLCAPACITY celloutside0left cap1)
    (CELLCAPACITY celloutside0right cap1)
    (CELLCAPACITY celloutside1left cap1)
    (CELLCAPACITY celloutside1right cap1)
    (CELLCAPACITY celloutside2left cap1)
    (CELLCAPACITY celloutside2right cap1)
    (CELLCAPACITY celloutside0up cap1)
    (CELLCAPACITY celloutside0down cap1)
    (CELLCAPACITY celloutside1up cap1)
    (CELLCAPACITY celloutside1down cap1)
    (CELLCAPACITY cell00 cap2)
    (CELLCAPACITY cell01 cap4)
    (CELLCAPACITY cell10 cap2)
    (CELLCAPACITY cell11 cap4)
    (CELLCAPACITY cell20 cap3)
    (CELLCAPACITY cell21 cap2)

    (nodedegree0 n00)
    (nodedegree0 n01)
    (nodedegree0 n02)
    (nodedegree0 n10)
    (nodedegree0 n11)
    (nodedegree0 n12)
    (nodedegree0 n20)
    (nodedegree0 n21)
    (nodedegree0 n22)
    (nodedegree0 n30)
    (nodedegree0 n31)
    (nodedegree0 n32)

    (CELLEDGE cell00 cell10 n10 n11)
    (CELLEDGE cell01 cell11 n11 n12)
    (CELLEDGE cell10 cell20 n20 n21)
    (CELLEDGE cell11 cell21 n21 n22)
    (CELLEDGE celloutside0up cell00 n00 n01)
    (CELLEDGE cell20 celloutside0down n30 n31)
    (CELLEDGE celloutside1up cell01 n01 n02)
    (CELLEDGE cell21 celloutside1down n31 n32)
    (CELLEDGE cell00 cell01 n01 n11)
    (CELLEDGE cell10 cell11 n11 n21)
    (CELLEDGE cell20 cell21 n21 n31)
    (CELLEDGE celloutside0left cell00 n00 n10)
    (CELLEDGE cell01 celloutside0right n02 n12)
    (CELLEDGE celloutside1left cell10 n10 n20)
    (CELLEDGE cell11 celloutside1right n12 n22)
    (CELLEDGE celloutside2left cell20 n20 n30)
    (CELLEDGE cell21 celloutside2right n22 n32)

    
)
(:goal
    (and
        (not (nodedegree1 n00))
        (not (nodedegree1 n01))
        (not (nodedegree1 n02))
        (not (nodedegree1 n10))
        (not (nodedegree1 n11))
        (not (nodedegree1 n12))
        (not (nodedegree1 n20))
        (not (nodedegree1 n21))
        (not (nodedegree1 n22))
        (not (nodedegree1 n30))
        (not (nodedegree1 n31))
        (not (nodedegree1 n32))

        (CELLCAPACITY cell00 cap0)
        (CELLCAPACITY cell10 cap0)
        (CELLCAPACITY cell20 cap0)
        (CELLCAPACITY cell21 cap0)
    )
)
(:constraints (sometime-before (linked n01 n02) (linked n30 n31)))
)


