if instance_exists(objBattleMsg){
    alarm[2] = 1
} else {
    if rounds > type+1 {
        alarm[11] = 1
    } else {
        if !backfire { 
            random_choser(); 
            nohit = !(random(4) < global.en_count)
            with instance_create(global.target[global._pl].x,global.target[global._pl].y,objThunderFx) {
                type = objPKThunder.type
                backfire = 0
                visible = !objPKThunder.nohit
            }
        } else {   
            nohit = !(random(4) < global.pl_count)
            with instance_create(0,0,objThunderFx) {
                type = objPKThunder.type
                backfire = 1
                visible = !objPKThunder.nohit
            }
        }
        thunder_damage()
        alarm[3] = 1
    }
}

