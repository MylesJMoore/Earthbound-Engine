if instance_exists(objBattleMsg) {
    alarm[0] = 1
} else {
    audio_play_sound(sndhelp,0,0)
    var a = instance_create(0,0,objBattleMsg);
    a.strno = 0;
    if random(256) < 205 and instance_number(objEnemyPar) < 5 {
        if global.en_count < 5 {
            global.en_count++;
        }
        var list;
        list = ds_list_create();
        
        if global.enemy[1] = 0 { ds_list_add(list,1); }
        if global.enemy[2] = 0 { ds_list_add(list,2); }
        if global.enemy[3] = 0 { ds_list_add(list,3); }
        if global.enemy[4] = 0 { ds_list_add(list,4); }
        if global.enemy[5] = 0 { ds_list_add(list,5); }
        
        global.enemy[ds_list_find_value(list, 0)] = (instance_create(irandom_range(32,288),irandom_range(64,144),choose(help_enemy1,help_enemy2,help_enemy3))).id
        global.totalexp += global.enemy[ds_list_find_value(list, 0)].e_exp
        a.str[0] = upper(global.enemy[ds_list_find_value(list, 0)].e_art)+global.enemy[ds_list_find_value(list, 0)].e_name+" joined the battle!";
        ds_list_destroy(list);
    } else {
        failed = 1
    }
    
    if failed {
        a.str[0] = "But nobody came.";
    }
    alarm[11] = 1
}

