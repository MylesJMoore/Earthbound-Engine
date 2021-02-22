/// @description First turn
turn_master()
for (var i=1;i<global.pl_count+1;i++) {
    global.healthbar[i].y = global.healthbar[i].ystart
}

objBattleController.number_of_turns++
with instance_create(0,0,objBattleKiller) { first_turn = 1 }

