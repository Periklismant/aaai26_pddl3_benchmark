(define (problem recharge_single_source_cover_1676-problem)
 (:domain recharge_single_source_cover_1676-domain)
 (:objects
   location0000 location0001 location0002 location0003 location0004 location0005 location0006 location0007 location0008 location0009 location0010 location0011 location0012 location0013 location0014 - location
   robot00 robot01 - robot
   battery0000 battery0001 battery0002 battery0003 battery0004 battery0005 battery0006 - battery_level
   config_00 - config
 )
 (:init (connected location0003 location0004) (connected location0012 location0013) (connected location0005 location0007) (connected location0000 location0002) (connected location0008 location0009) (connected location0011 location0014) (connected location0002 location0008) (connected location0013 location0014) (connected location0001 location0012) (connected location0007 location0010) (connected location0004 location0005) (connected location0005 location0006) (connected location0003 location0006) (connected location0009 location0010) (connected location0008 location0014) (connected location0001 location0011) (connected location0002 location0013) (connected location0004 location0007) (connected location0000 location0009) (connected location0008 location0013) (connected location0002 location0009) (connected location0011 location0012) (connected location0007 location0008) (battery_predecessor battery0000 battery0001) (battery_predecessor battery0001 battery0002) (battery_predecessor battery0002 battery0003) (battery_predecessor battery0003 battery0004) (battery_predecessor battery0004 battery0005) (battery_predecessor battery0005 battery0006) (at_ robot00 location0008) (battery robot00 battery0004) (at_ robot01 location0008) (battery robot01 battery0002) (guard_config config_00 location0011) (guard_config config_00 location0001) (guard_config config_00 location0012) (guard_config config_00 location0014))
 (:goal (and (config_fullfilled config_00)))
 (:constraints (sometime-before (battery robot00 battery0003) (exists (?r - robot) (battery ?r battery0005))))
)
