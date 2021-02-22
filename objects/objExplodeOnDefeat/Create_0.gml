audio_play_sound(sndeattack,0,0);

active = 0
img = 0
with instance_create(0,0,objBattleMsg) {
    strno = 0;
    str[0] = upper(global.enemy[enmy].e_art)+global.enemy[enmy].e_name+" exploded#   into bits!"
}
alarm[0] = 1;

