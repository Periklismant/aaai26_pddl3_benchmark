;; generatepddl.py gen 4 3 problems/p13.pddl plan
;;
;;  22.    
;;  .31    
;;  ...    
;;  .23    
;;
;;  ++++
;;  |2 2 .|
;;  + +++
;;  |.|3 1 
;;  + ++  
;;  |. .|. 
;;  ++ ++
;;   .|2 3|
;;    +++

(define (problem sliterlink416211)
(:domain slitherlink)

(:objects
    cap0 cap1 cap2 cap3 cap4 - cellcapacitylevel
    n00 n01 n02 n03 n10 n11 n12 n13 n20 n21 n22 n23 n30 n31 n32 n33 n40 n41 n42 n43 - node
    cell00 cell01 cell02 cell10 cell11 cell12 cell20 cell21 cell22 cell30 cell31 cell32 celloutside0left celloutside0right celloutside1left celloutside1right celloutside2left celloutside2right celloutside3left celloutside3right celloutside0up celloutside0down celloutside1up celloutside1down celloutside2up celloutside2down - cell
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
    (CELLCAPACITY celloutside3left cap1)
    (CELLCAPACITY celloutside3right cap1)
    (CELLCAPACITY celloutside0up cap1)
    (CELLCAPACITY celloutside0down cap1)
    (CELLCAPACITY celloutside1up cap1)
    (CELLCAPACITY celloutside1down cap1)
    (CELLCAPACITY celloutside2up cap1)
    (CELLCAPACITY celloutside2down cap1)
    (CELLCAPACITY cell00 cap2)
    (CELLCAPACITY cell01 cap2)
    (CELLCAPACITY cell02 cap4)
    (CELLCAPACITY cell10 cap4)
    (CELLCAPACITY cell11 cap3)
    (CELLCAPACITY cell12 cap1)
    (CELLCAPACITY cell20 cap4)
    (CELLCAPACITY cell21 cap4)
    (CELLCAPACITY cell22 cap4)
    (CELLCAPACITY cell30 cap4)
    (CELLCAPACITY cell31 cap2)
    (CELLCAPACITY cell32 cap3)

    (nodedegree0 n00)
    (nodedegree0 n01)
    (nodedegree0 n02)
    (nodedegree0 n03)
    (nodedegree0 n10)
    (nodedegree0 n11)
    (nodedegree0 n12)
    (nodedegree0 n13)
    (nodedegree0 n20)
    (nodedegree0 n21)
    (nodedegree0 n22)
    (nodedegree0 n23)
    (nodedegree0 n30)
    (nodedegree0 n31)
    (nodedegree0 n32)
    (nodedegree0 n33)
    (nodedegree0 n40)
    (nodedegree0 n41)
    (nodedegree0 n42)
    (nodedegree0 n43)

    (CELLEDGE cell00 cell10 n10 n11)
    (CELLEDGE cell01 cell11 n11 n12)
    (CELLEDGE cell02 cell12 n12 n13)
    (CELLEDGE cell10 cell20 n20 n21)
    (CELLEDGE cell11 cell21 n21 n22)
    (CELLEDGE cell12 cell22 n22 n23)
    (CELLEDGE cell20 cell30 n30 n31)
    (CELLEDGE cell21 cell31 n31 n32)
    (CELLEDGE cell22 cell32 n32 n33)
    (CELLEDGE celloutside0up cell00 n00 n01)
    (CELLEDGE cell30 celloutside0down n40 n41)
    (CELLEDGE celloutside1up cell01 n01 n02)
    (CELLEDGE cell31 celloutside1down n41 n42)
    (CELLEDGE celloutside2up cell02 n02 n03)
    (CELLEDGE cell32 celloutside2down n42 n43)
    (CELLEDGE cell00 cell01 n01 n11)
    (CELLEDGE cell10 cell11 n11 n21)
    (CELLEDGE cell20 cell21 n21 n31)
    (CELLEDGE cell30 cell31 n31 n41)
    (CELLEDGE cell01 cell02 n02 n12)
    (CELLEDGE cell11 cell12 n12 n22)
    (CELLEDGE cell21 cell22 n22 n32)
    (CELLEDGE cell31 cell32 n32 n42)
    (CELLEDGE celloutside0left cell00 n00 n10)
    (CELLEDGE cell02 celloutside0right n03 n13)
    (CELLEDGE celloutside1left cell10 n10 n20)
    (CELLEDGE cell12 celloutside1right n13 n23)
    (CELLEDGE celloutside2left cell20 n20 n30)
    (CELLEDGE cell22 celloutside2right n23 n33)
    (CELLEDGE celloutside3left cell30 n30 n40)
    (CELLEDGE cell32 celloutside3right n33 n43)

    
)
(:goal
    (and
        (not (nodedegree1 n00))
        (not (nodedegree1 n01))
        (not (nodedegree1 n02))
        (not (nodedegree1 n03))
        (not (nodedegree1 n10))
        (not (nodedegree1 n11))
        (not (nodedegree1 n12))
        (not (nodedegree1 n13))
        (not (nodedegree1 n20))
        (not (nodedegree1 n21))
        (not (nodedegree1 n22))
        (not (nodedegree1 n23))
        (not (nodedegree1 n30))
        (not (nodedegree1 n31))
        (not (nodedegree1 n32))
        (not (nodedegree1 n33))
        (not (nodedegree1 n40))
        (not (nodedegree1 n41))
        (not (nodedegree1 n42))
        (not (nodedegree1 n43))

        (CELLCAPACITY cell00 cap0)
        (CELLCAPACITY cell01 cap0)
        (CELLCAPACITY cell11 cap0)
        (CELLCAPACITY cell12 cap0)
        (CELLCAPACITY cell31 cap0)
        (CELLCAPACITY cell32 cap0)
    )
)
(:constraints (sometime (exists (?c1 - cell) (exists (?c2 - cell) (and (CELLCAPACITY ?c1 cap0) (CELLCAPACITY ?c2 cap3))))))
)


