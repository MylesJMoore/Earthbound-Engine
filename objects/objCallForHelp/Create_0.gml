audio_play_sound(sndeattack,0,0);
with instance_create(0,0,objBattleMsg) {
    strno = 0;
    str[0] = upper(global.enemy[enmy].e_art)+global.enemy[enmy].e_name+" called for help!";
}
failed = 0;
help_enemy1 = 0;
help_enemy2 = 0;
help_enemy3 = 0;
alarm[0] = 1;

