/// @description Continue
if !instance_exists(objBattleMsg) {
    with instance_create(0,0,objPassiveMaster) { pl = objStatusMaster.pl; skip = objStatusMaster.skip }
    instance_destroy()
} else { 
    alarm[11] = 1 
}

