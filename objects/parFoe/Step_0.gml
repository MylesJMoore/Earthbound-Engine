depth = -y

water = position_meeting(x,y,objWater)

if global.boss { instance_destroy() }

if !ie(parDeactivator) and !global.cutscene and room != rmGameOver and (!objDebug.active or !objDebug.can_input) {
    if distance_to_object(objPlayer) < 72 and (global.enemy[2] = 0 or global.enemy[3] = 0 or global.enemy[4] = 0 or global.enemy[5] = 0) and !objPlayer.invincible and can_chase and !global.disable_enemy_chasing {
        chasing = 1;
        move_towards_point(objPlayer.x,objPlayer.y,chasespd)
    } else {
        chasing = 0;
    }
} else {
    speed = 0
}

/*if instance_exists(objButterflyGet) or instance_exists(objTextBox) 
or instance_exists(objPause) or instance_exists(obj_inv) or instance_exists(objMapDisplay) 
or instance_exists(objStorage) or instance_exists(objGoodNight) 
or instance_exists(objQuestion) or instance_exists(objShop) or instance_exists(objFadeOut)
or instance_exists(objATMDisplay) or instance_exists(objBattleMsg) 

if ie(parDeactivator) or global.cutscene {
    speed = 0
    exit
} else {
    if distance_to_object(objPlayer) < 72 and (global.enemy[2] = 0 or global.enemy[3] = 0 or global.enemy[4] = 0 or global.enemy[5] = 0) and !objPlayer.invincible and can_chase {
        chasing = 1;
        move_towards_point(objPlayer.x,objPlayer.y,chasespd)
    } else {
        chasing = 0;
    }
}

/* */
/*  */
