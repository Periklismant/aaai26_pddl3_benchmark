(define (domain folding_zigzag_3_2_48520-domain)
 (:requirements :strips :typing :negative-preconditions :disjunctive-preconditions :equality :constraints)
 (:types node coord direction rotation)
 (:constants
   down left up right - direction
   clockwise counterclockwise - rotation
 )
 (:predicates (nextdirection ?dfrom - direction ?r - rotation ?d2to - direction) (coordinc ?c - coord ?cnext - coord) (endnode ?n - node) (connected ?n1 - node ?n2 - node) (at ?n - node ?x - coord ?y - coord) (heading ?n - node ?dir - direction) (free ?x - coord ?y - coord) (rotating) (node_first_pass_next ?nstart - node ?r - rotation ?n - node) (node_second_pass_next ?n - node))
 (:action rotate
  :parameters ( ?n - node ?r - rotation ?fromdir - direction ?todir - direction)
  :precondition (and (not (rotating)) (nextdirection ?fromdir ?r ?todir) (heading ?n ?fromdir))
  :effect (and (not (heading ?n ?fromdir)) (heading ?n ?todir) (rotating) (node_first_pass_next ?n ?r ?n) ))
 (:action rotatefirstpass
  :parameters ( ?nstart - node ?r - rotation ?n1 - node ?n2 - node ?n2x - coord ?n2y - coord ?n2dir - direction ?n2setdir - direction)
  :precondition (and (connected ?n1 ?n2) (nextdirection ?n2dir ?r ?n2setdir) (node_first_pass_next ?nstart ?r ?n1) (at ?n2 ?n2x ?n2y) (heading ?n2 ?n2dir))
  :effect (and (not (node_first_pass_next ?nstart ?r ?n1)) (node_first_pass_next ?nstart ?r ?n2) (not (at ?n2 ?n2x ?n2y)) (free ?n2x ?n2y) (not (heading ?n2 ?n2dir)) (heading ?n2 ?n2setdir) ))
 (:action rotate_first_pass_end
  :parameters ( ?nstart - node ?r - rotation ?n1 - node ?n2 - node ?n2x - coord ?n2y - coord)
  :precondition (and (endnode ?n2) (connected ?n1 ?n2) (node_first_pass_next ?nstart ?r ?n1) (at ?n2 ?n2x ?n2y))
  :effect (and (not (at ?n2 ?n2x ?n2y)) (free ?n2x ?n2y) (not (node_first_pass_next ?nstart ?r ?n1)) (node_second_pass_next ?nstart) ))
 (:action rotatesecondpass
  :parameters ( ?n1 - node ?n1x - coord ?n1y - coord ?n1dir - direction ?n2 - node ?n2x - coord ?n2y - coord)
  :precondition (and (connected ?n1 ?n2) (node_second_pass_next ?n1) (at ?n1 ?n1x ?n1y) (heading ?n1 ?n1dir) (free ?n2x ?n2y) (or (and (= ?n1dir up) (= ?n1x ?n2x) (coordinc ?n1y ?n2y)) (and (= ?n1dir down) (= ?n1x ?n2x) (coordinc ?n2y ?n1y)) (and (= ?n1dir left) (= ?n1y ?n2y) (coordinc ?n2x ?n1x)) (and (= ?n1dir right) (= ?n1y ?n2y) (coordinc ?n1x ?n2x))))
  :effect (and (not (node_second_pass_next ?n1)) (node_second_pass_next ?n2) (not (free ?n2x ?n2y)) (at ?n2 ?n2x ?n2y) ))
 (:action rotatesecondpassend
  :parameters ( ?n - node)
  :precondition (and (endnode ?n) (node_second_pass_next ?n))
  :effect (and (not (node_second_pass_next ?n)) (not (rotating)) ))
)

