(define (domain labyrinth-domain)
 (:requirements :strips :typing :negative-preconditions :equality :constraints)
 (:types
    card direction gridpos - object
    directionv directionh - direction
 )
 (:constants
   e w - directionh
   s n - directionv
 )
 (:predicates (next ?p1 - gridpos ?p2 - gridpos) (maxpos ?p - gridpos) (minpos ?p - gridpos) (blocked ?c - card ?d - direction) (robotat ?c - card) (cardat ?c - card ?x - gridpos ?y - gridpos) (left) (cardsmoving) (cardsmovingwest) (cardsmovingeast) (cardsmovingsouth) (cardsmovingnorth) (nextmovingcard ?c - card) (newheadtailcard ?c - card))
 (:action movewest
  :parameters ( ?cfrom - card ?xfrom - gridpos ?yfrom - gridpos ?dfrom - directionh ?cto - card ?xto - gridpos ?yto - gridpos ?dto - directionh)
  :precondition (and (not (cardsmoving)) (= ?dfrom w) (robotat ?cfrom) (cardat ?cfrom ?xfrom ?yfrom) (cardat ?cto ?xto ?yto) (next ?xfrom ?xto) (= ?yfrom ?yto) (not (= ?dfrom ?dto)) (not (blocked ?cfrom ?dfrom)) (not (blocked ?cto ?dto)))
  :effect (and (not (robotat ?cfrom)) (robotat ?cto) ))
 (:action moveeast
  :parameters ( ?cfrom - card ?xfrom - gridpos ?yfrom - gridpos ?dfrom - directionh ?cto - card ?xto - gridpos ?yto - gridpos ?dto - directionh)
  :precondition (and (not (cardsmoving)) (= ?dfrom e) (robotat ?cfrom) (cardat ?cfrom ?xfrom ?yfrom) (cardat ?cto ?xto ?yto) (next ?xto ?xfrom) (= ?yfrom ?yto) (not (= ?dfrom ?dto)) (not (blocked ?cfrom ?dfrom)) (not (blocked ?cto ?dto)))
  :effect (and (not (robotat ?cfrom)) (robotat ?cto) ))
 (:action movenorth
  :parameters ( ?cfrom - card ?xfrom - gridpos ?yfrom - gridpos ?dfrom_0 - directionv ?cto - card ?xto - gridpos ?yto - gridpos ?dto_0 - directionv)
  :precondition (and (not (cardsmoving)) (= ?dfrom_0 n) (robotat ?cfrom) (cardat ?cfrom ?xfrom ?yfrom) (cardat ?cto ?xto ?yto) (next ?yfrom ?yto) (= ?xfrom ?xto) (not (= ?dfrom_0 ?dto_0)) (not (blocked ?cfrom ?dfrom_0)) (not (blocked ?cto ?dto_0)))
  :effect (and (not (robotat ?cfrom)) (robotat ?cto) ))
 (:action movesouth
  :parameters ( ?cfrom - card ?xfrom - gridpos ?yfrom - gridpos ?dfrom_0 - directionv ?cto - card ?xto - gridpos ?yto - gridpos ?dto_0 - directionv)
  :precondition (and (not (cardsmoving)) (= ?dfrom_0 s) (robotat ?cfrom) (cardat ?cfrom ?xfrom ?yfrom) (cardat ?cto ?xto ?yto) (next ?yto ?yfrom) (= ?xfrom ?xto) (not (= ?dfrom_0 ?dto_0)) (not (blocked ?cfrom ?dfrom_0)) (not (blocked ?cto ?dto_0)))
  :effect (and (not (robotat ?cfrom)) (robotat ?cto) ))
 (:action startmovecardwest
  :parameters ( ?cm - card ?x - gridpos ?y - gridpos ?cnext - card ?nextx - gridpos)
  :precondition (and (not (cardsmoving)) (not (cardsmovingwest)) (not (robotat ?cm)) (cardat ?cm ?x ?y) (minpos ?x) (cardat ?cnext ?nextx ?y) (next ?nextx ?x))
  :effect (and (cardsmoving) (cardsmovingwest) (not (cardat ?cm ?x ?y)) (newheadtailcard ?cm) (nextmovingcard ?cnext) ))
 (:action movecardwest
  :parameters ( ?cm - card ?x - gridpos ?y - gridpos ?cnext - card ?nextx - gridpos ?prevx - gridpos)
  :precondition (and (cardsmoving) (cardsmovingwest) (not (robotat ?cm)) (nextmovingcard ?cm) (cardat ?cm ?x ?y) (cardat ?cnext ?nextx ?y) (next ?x ?prevx) (next ?nextx ?x))
  :effect (and (cardsmoving) (cardsmovingwest) (not (cardat ?cm ?x ?y)) (cardat ?cm ?prevx ?y) (not (nextmovingcard ?cm)) (nextmovingcard ?cnext) ))
 (:action stopmovecardwest
  :parameters ( ?cm - card ?x - gridpos ?y - gridpos ?prevx - gridpos ?newtc - card)
  :precondition (and (cardsmoving) (cardsmovingwest) (not (robotat ?cm)) (nextmovingcard ?cm) (cardat ?cm ?x ?y) (next ?x ?prevx) (maxpos ?x) (newheadtailcard ?newtc))
  :effect (and (not (cardsmoving)) (not (cardsmovingwest)) (not (cardat ?cm ?x ?y)) (cardat ?cm ?prevx ?y) (cardat ?newtc ?x ?y) (not (newheadtailcard ?newtc)) (not (nextmovingcard ?cm)) ))
 (:action startmovecardeast
  :parameters ( ?cm - card ?x - gridpos ?y - gridpos ?cnext - card ?nextx - gridpos)
  :precondition (and (not (cardsmoving)) (not (cardsmovingeast)) (not (robotat ?cm)) (cardat ?cm ?x ?y) (maxpos ?x) (cardat ?cnext ?nextx ?y) (next ?x ?nextx))
  :effect (and (cardsmoving) (cardsmovingeast) (not (cardat ?cm ?x ?y)) (newheadtailcard ?cm) (nextmovingcard ?cnext) ))
 (:action movecardeast
  :parameters ( ?cm - card ?x - gridpos ?y - gridpos ?cnext - card ?nextx - gridpos ?prevx - gridpos)
  :precondition (and (cardsmoving) (cardsmovingeast) (not (robotat ?cm)) (nextmovingcard ?cm) (cardat ?cm ?x ?y) (cardat ?cnext ?nextx ?y) (next ?prevx ?x) (next ?x ?nextx))
  :effect (and (cardsmoving) (cardsmovingeast) (not (cardat ?cm ?x ?y)) (cardat ?cm ?prevx ?y) (not (nextmovingcard ?cm)) (nextmovingcard ?cnext) ))
 (:action stopmovecardeast
  :parameters ( ?cm - card ?x - gridpos ?y - gridpos ?prevx - gridpos ?newtc - card)
  :precondition (and (cardsmoving) (cardsmovingeast) (not (robotat ?cm)) (nextmovingcard ?cm) (cardat ?cm ?x ?y) (next ?prevx ?x) (minpos ?x) (newheadtailcard ?newtc))
  :effect (and (not (cardsmoving)) (not (cardsmovingeast)) (not (cardat ?cm ?x ?y)) (cardat ?cm ?prevx ?y) (cardat ?newtc ?x ?y) (not (newheadtailcard ?newtc)) (not (nextmovingcard ?cm)) ))
 (:action startmovecardnorth
  :parameters ( ?cm - card ?x - gridpos ?y - gridpos ?cnext - card ?nexty - gridpos)
  :precondition (and (not (cardsmoving)) (not (cardsmovingnorth)) (not (robotat ?cm)) (cardat ?cm ?x ?y) (minpos ?y) (cardat ?cnext ?x ?nexty) (next ?nexty ?y))
  :effect (and (cardsmoving) (cardsmovingnorth) (not (cardat ?cm ?x ?y)) (newheadtailcard ?cm) (nextmovingcard ?cnext) ))
 (:action movecardnorth
  :parameters ( ?cm - card ?x - gridpos ?y - gridpos ?cnext - card ?nexty - gridpos ?prevy - gridpos)
  :precondition (and (cardsmoving) (cardsmovingnorth) (not (robotat ?cm)) (nextmovingcard ?cm) (cardat ?cm ?x ?y) (cardat ?cnext ?x ?nexty) (next ?y ?prevy) (next ?nexty ?y))
  :effect (and (cardsmoving) (cardsmovingnorth) (not (cardat ?cm ?x ?y)) (cardat ?cm ?x ?prevy) (not (nextmovingcard ?cm)) (nextmovingcard ?cnext) ))
 (:action stopmovecardnorth
  :parameters ( ?cm - card ?x - gridpos ?y - gridpos ?prevy - gridpos ?newtc - card)
  :precondition (and (cardsmoving) (cardsmovingnorth) (not (robotat ?cm)) (nextmovingcard ?cm) (cardat ?cm ?x ?y) (next ?y ?prevy) (maxpos ?y) (newheadtailcard ?newtc))
  :effect (and (not (cardsmoving)) (not (cardsmovingnorth)) (not (cardat ?cm ?x ?y)) (cardat ?cm ?x ?prevy) (cardat ?newtc ?x ?y) (not (newheadtailcard ?newtc)) (not (nextmovingcard ?cm)) ))
 (:action startmovecardsouth
  :parameters ( ?cm - card ?x - gridpos ?y - gridpos ?cnext - card ?nexty - gridpos)
  :precondition (and (not (cardsmoving)) (not (cardsmovingsouth)) (not (robotat ?cm)) (cardat ?cm ?x ?y) (maxpos ?y) (cardat ?cnext ?x ?nexty) (next ?y ?nexty))
  :effect (and (cardsmoving) (cardsmovingsouth) (not (cardat ?cm ?x ?y)) (newheadtailcard ?cm) (nextmovingcard ?cnext) ))
 (:action movecardsouth
  :parameters ( ?cm - card ?x - gridpos ?y - gridpos ?cnext - card ?nexty - gridpos ?prevy - gridpos)
  :precondition (and (cardsmoving) (cardsmovingsouth) (not (robotat ?cm)) (nextmovingcard ?cm) (cardat ?cm ?x ?y) (cardat ?cnext ?x ?nexty) (next ?prevy ?y) (next ?y ?nexty))
  :effect (and (cardsmoving) (cardsmovingsouth) (not (cardat ?cm ?x ?y)) (cardat ?cm ?x ?prevy) (not (nextmovingcard ?cm)) (nextmovingcard ?cnext) ))
 (:action stopmovecardsouth
  :parameters ( ?cm - card ?x - gridpos ?y - gridpos ?prevy - gridpos ?newtc - card)
  :precondition (and (cardsmoving) (cardsmovingsouth) (not (robotat ?cm)) (nextmovingcard ?cm) (cardat ?cm ?x ?y) (next ?prevy ?y) (minpos ?y) (newheadtailcard ?newtc))
  :effect (and (not (cardsmoving)) (not (cardsmovingsouth)) (not (cardat ?cm ?x ?y)) (cardat ?cm ?x ?prevy) (cardat ?newtc ?x ?y) (not (newheadtailcard ?newtc)) (not (nextmovingcard ?cm)) ))
 (:action leave
  :parameters ( ?c - card ?prow - gridpos ?pcolumn - gridpos)
  :precondition (and (not (cardsmoving)) (robotat ?c) (cardat ?c ?prow ?pcolumn) (maxpos ?prow) (maxpos ?pcolumn) (not (blocked ?c s)))
  :effect (and (left) ))
)
