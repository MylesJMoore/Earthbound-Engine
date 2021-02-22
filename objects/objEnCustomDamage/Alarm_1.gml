if instance_exists(objBattleMsg) { 
    alarm[1] = 1 
} else { 
    var a = instance_create(0,0,objBattleMsg);
    a.strno = 0
    
    global.enemy[enmy].e_hp -= dmg;
    a.str[0] = string(dmg)+" HP of damage#   to "+global.enemy[enmy].e_art + global.enemy[enmy].e_name + "!"
    with global.enemy[enmy] { alarm[1] = 2 }
    with instance_create(random_range(global.enemy[enmy].x-16,global.enemy[enmy].x+16),
	random_range(global.enemy[enmy].y-16,global.enemy[enmy].y+16),objHitEffect) { visible = 1 }
    
    alarm[0] = 1
}

