/// @description Run away

with instance_create(0,0,objBattleMsg) {
    strno = 1;
    str[0] = global.s_name[objBattleController._turn]+" tried to run away..."
    if random(100) < (objBattleController.highest_pc_speed - objBattleController.highest_en_speed + 10*objBattleController.number_of_turns) {
        if global.boss {
            str[1] = "...but couldn't!"
        } else {
            str[1] = "...and did!"
            objBattleController.runaway = 1
        }
    } else {
        if global.battle_type == 1 {
            str[1] = "...and did!"
            objBattleController.runaway = 1
        } else {
            str[1] = "...but couldn't!"
        }
    }
}
alarm[3] = 1

