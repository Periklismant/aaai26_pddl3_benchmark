(define (problem recharge_single_source_move_to_locations_5836-problem)
 (:domain recharge_single_source_move_to_locations_5836-domain)
 (:objects
   location0000 location0001 location0002 location0003 location0004 location0005 location0006 location0007 location0008 location0009 - location
   robot00 robot01 - robot
   battery0000 battery0001 battery0002 battery0003 battery0004 battery0005 battery0006 battery0007 battery0008 - battery_level
 )
 (:init (connected location0003 location0004) (connected location0008 location0009) (connected location0002 location0005) (connected location0001 location0003) (connected location0002 location0008) (connected location0004 location0005) (connected location0004 location0008) (connected location0000 location0007) (connected location0002 location0007) (connected location0006 location0007) (connected location0005 location0008) (connected location0001 location0004) (connected location0002 location0003) (connected location0006 location0009) (connected location0007 location0008) (battery_predecessor battery0000 battery0001) (battery_predecessor battery0001 battery0002) (battery_predecessor battery0002 battery0003) (battery_predecessor battery0003 battery0004) (battery_predecessor battery0004 battery0005) (battery_predecessor battery0005 battery0006) (battery_predecessor battery0006 battery0007) (battery_predecessor battery0007 battery0008) (at_ robot00 location0008) (battery robot00 battery0003) (at_ robot01 location0008) (battery robot01 battery0005))
 (:goal (and (at_ robot00 location0000) (at_ robot01 location0001)))
 (:constraints (sometime (battery robot01 battery0004)) (sometime-after (battery robot01 battery0004) (at_ robot01 location0002)))
)
