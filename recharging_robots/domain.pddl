(define (domain recharge_single_source_move_to_locations_6820-domain)
 (:requirements :strips :typing :negative-preconditions :disjunctive-preconditions :equality :conditional-effects :constraints :universal-preconditions :action-costs)
 (:types location robot battery_level config)
 (:predicates (battery_predecessor ?f1 - battery_level ?f2 - battery_level) (connected ?l1 - location ?l2 - location) (guard_config ?c - config ?l - location) (at_ ?r - robot ?l - location) (battery ?r - robot ?f - battery_level) (stopped ?r - robot) (guarded ?l - location) (config_fullfilled ?c - config))
 (:action move
  :parameters ( ?r - robot ?from - location ?to - location ?fpre - battery_level ?fpost - battery_level)
  :precondition (and (not (stopped ?r)) (at_ ?r ?from) (battery ?r ?fpre) (battery_predecessor ?fpost ?fpre) (or (connected ?from ?to) (connected ?to ?from)))
  :effect (and (not (at_ ?r ?from)) (at_ ?r ?to) (not (battery ?r ?fpre)) (battery ?r ?fpost) ))
 (:action recharge
  :parameters ( ?rfrom - robot ?rto - robot ?loc - location ?fpre_from - battery_level ?fpost_from - battery_level ?fpre_to - battery_level ?fpost_to - battery_level)
  :precondition (and (not (= ?rfrom ?rto)) (at_ ?rfrom ?loc) (at_ ?rto ?loc) (battery ?rfrom ?fpre_from) (battery ?rto ?fpre_to) (battery_predecessor ?fpost_from ?fpre_from) (battery_predecessor ?fpre_to ?fpost_to))
  :effect (and (not (battery ?rfrom ?fpre_from)) (battery ?rfrom ?fpost_from) (not (battery ?rto ?fpre_to)) (battery ?rto ?fpost_to) ))
 (:action stop_and_guard
  :parameters ( ?r - robot ?l - location)
  :precondition (and (not (stopped ?r)) (at_ ?r ?l))
  :effect (and (stopped ?r) (guarded ?l)(forall (?l2_0 - location) (when (or (connected ?l ?l2_0) (connected ?l2_0 ?l)) (guarded ?l2_0))) ))
 (:action verify_guard_config
  :parameters ( ?c - config)
  :precondition (and (forall (?l_0 - location)
 (imply (guard_config ?c ?l_0) (guarded ?l_0))))
  :effect (and (config_fullfilled ?c)(forall (?r_0 - robot) (not (stopped ?r_0)))(forall (?l_0 - location) (not (guarded ?l_0))) ))
)
