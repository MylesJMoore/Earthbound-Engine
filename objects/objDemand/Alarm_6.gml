if instance_exists(objFreezeFx){
    alarm[6] = 1
} else {
    randomize()
    var msg,resist;
    resist = global.target[global._pl].freeze_resistance; 
    
    dmg = ceil(dmg*(100-30*resist)/100)
    
    if resist !=4 {
        
        var a = instance_create(0,0,objBattleMsg);
        
        with global.target[global._pl] { alarm[1] = 2 }
        
        global.target[global._pl].e_hp -= dmg;
        a.str[0] = string(dmg)+" HP of damage#   to "+global.target[global._pl].e_art + global.target[global._pl].e_name + "!"
        
        instance_create(0,0,objHitEffect)
    } else {
        failed = 1
        var a = instance_create(0,0,objBattleMsg);
        a.strno = 0
        a.str[0] = "It had no effect on "+global.target[global._pl].e_art + global.target[global._pl].e_name + "!"
    }

    alarm[11] = 1
}

