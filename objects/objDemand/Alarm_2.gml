if instance_exists(objStatDownFx) or instance_exists(objBattleMsg) {
    alarm[2] = 1
} else {
    var a = instance_create(0,0,objBattleMsg);
    a.strno = 0
    if global.target[global._pl].patience = 100 {
        a.str[0] = upper(global.target[global._pl].e_art) + global.target[global._pl].e_name +" called the request unreasonable."
    } else if global.target[global._pl].patience < 100 and global.target[global._pl].patience >= 80 {
        a.str[0] = upper(global.target[global._pl].e_art) + global.target[global._pl].e_name +" refuses to reach an agreement with you."
    } else if global.target[global._pl].patience < 80 and global.target[global._pl].patience >= 60 {
        a.str[0] = upper(global.target[global._pl].e_art) + global.target[global._pl].e_name +" is becoming rather frustrated."
    } else if global.target[global._pl].patience < 60 and global.target[global._pl].patience >= 40 {
        a.str[0] = upper(global.target[global._pl].e_art) + global.target[global._pl].e_name +" is losing his cool!"
    } else if global.target[global._pl].patience < 40 and global.target[global._pl].patience >= 20 {
        a.str[0] = upper(global.target[global._pl].e_art) + global.target[global._pl].e_name +" doesn't wanna deal with your crap!"
    } else if global.target[global._pl].patience < 20 and global.target[global._pl].patience >= 0 {
        a.str[0] = upper(global.target[global._pl].e_art) + global.target[global._pl].e_name +" said <No, no, no way. Shut up.>"
    } else {
        a.str[0] = upper(global.target[global._pl].e_art) + global.target[global._pl].e_name +" is furious now!"
    }
    alarm[3] = 1
}

