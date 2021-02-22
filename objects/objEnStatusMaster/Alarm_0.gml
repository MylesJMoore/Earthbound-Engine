/// @description Poison
if !global.enemy[enmy].poison and ! global.enemy[enmy].infected and !global.enemy[enmy].solids and 
   !global.enemy[enmy].numb and !global.enemy[enmy].crying and !global.enemy[enmy].shocked and 
   !global.enemy[enmy].asleep and !global.enemy[enmy].cantconcentrate and !global.enemy[enmy].turned_around {
    alarm[11] = 1
} else if global.enemy[enmy].turned_around{
    alarm[10] = 1
} else {
    if global.enemy[enmy].poison = 1 {
        dmg = 20+irandom_range(-5,5)
        global.enemy[enmy].e_hp -= dmg;
        audio_play_sound(sndenemyhit,0,0)
        with global.enemy[enmy] { alarm[1] = 2 }
        
        var a = instance_create(0,0,objBattleMsg);
        a.strno = 0;
        a.str[0] = upper(global.enemy[enmy].e_art)+global.enemy[enmy].e_name+" felt pain from the poison#   and took "+string(dmg)+" HP of damage!";
    }
    alarm[1] = 1
}

