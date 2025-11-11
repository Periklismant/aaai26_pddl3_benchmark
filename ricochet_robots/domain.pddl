(define (domain ricochet-robots)
(:requirements :typing :strips :negative-preconditions :disjunctive-preconditions)

(:types
    robot - object
    cell - object
    direction - object
)

(:predicates
    ;; ?cnext is right next to ?c in the direction of ?dir
    (NEXT ?c - cell ?cnext - cell ?dir - direction)
    ;; moving from ?c in the direction ?dir is blocked
    (BLOCKED ?c - cell ?dir - direction)
    ;; Robot ?r is located in the cell ?c
    (at_ ?r - robot ?c - cell)
    ;; No robot is located in the cell ?c
    (free ?c - cell)
    ;; No robot is moving anywhere
    (nothing_is_moving)
    ;; Robot ?r is moving in the direction ?dir
    (is_moving ?r - robot ?dir - direction)
)

;; Starts movement of the robot ?r in the direction ?dir
(:action go
    :parameters (?r - robot ?dir - direction)
    :precondition
        (and
            (nothing_is_moving)

            ;; If we want to make sure that the robot can actually make a step
            ;; in the specified direction, then we need to add the following
            ;; (and the corresponding parameters ?cfrom and ?cto):
            ;;
            ;; (at ?r ?cfrom)
            ;; (NEXT ?cfrom ?cto ?dir)
            ;; (free ?cto)
            ;; (not (BLOCKED ?cfrom ?dir))
        )
    :effect
        (and
            (not (nothing_is_moving))
            (is_moving ?r ?dir)
        )
)

;; Make one step from the cell ?cfrom to the cell ?cto with the robot ?r
;; Robot is allowed to make the step only if it is the (only) one currently
;; moving, and it is moving in the direction ?dir
(:action step
    :parameters (?r - robot ?cfrom - cell ?cto - cell ?dir - direction)
    :precondition
        (and
            (is_moving ?r ?dir)
            (at_ ?r ?cfrom)
            (NEXT ?cfrom ?cto ?dir)
            (free ?cto)
            (not (BLOCKED ?cfrom ?dir))
        )
    :effect
        (and
            (not (at_ ?r ?cfrom))
            (free ?cfrom)
            (not (free ?cto))
            (at_ ?r ?cto)
        )
)

;; Stopping of the robot is split between
;; (i) stop-at-barrier which stops the robot if it cannot move further due to
;;     a barrier expressed with (BLOCKED ...) predicate
;; (ii) stop-at-robot which stops the robot if the next step is blocked by
;;      another robot
(:action stopatbarrier
    :parameters (?r - robot ?cat - cell ?dir - direction)
    :precondition
        (and
            (is_moving ?r ?dir)
            (at_ ?r ?cat)
            (BLOCKED ?cat ?dir)
        )
    :effect
        (and
            (not (is_moving ?r ?dir))
            (nothing_is_moving)
        )
)

(:action stopatrobot
    :parameters (?r - robot ?cat - cell ?cnext - cell ?dir - direction)
    :precondition
        (and
            (is_moving ?r ?dir)
            (at_ ?r ?cat)
            (NEXT ?cat ?cnext ?dir)
            (not (free ?cnext))
        )
    :effect
        (and
            (not (is_moving ?r ?dir))
            (nothing_is_moving)
        )
)
)
