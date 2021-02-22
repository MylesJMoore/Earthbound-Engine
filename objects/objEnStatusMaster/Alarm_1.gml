/// @description Infection
if !instance_exists(objBattleMsg) {
    if global.enemy[enmy].infected = 1 {
        dmg = 40+irandom_range(-10,10)
        global.enemy[enmy].e_hp -= dmg;
        audio_play_sound(sndenemyhit,0,0)
        with global.enemy[enmy] { alarm[1] = 2 }
        
        var a = instance_create(0,0,objBattleMsg);
        a.strno = 0;
        a.str[0] = upper(global.enemy[enmy].e_art)+global.enemy[enmy].e_name+" felt pain from the "+choose("biohazard","infection","infectious agent","pathogen")+"#   and took "+string(dmg)+" HP of damage!"
    }
    alarm[2] = 1
} else {
    alarm[1] = 1
}

