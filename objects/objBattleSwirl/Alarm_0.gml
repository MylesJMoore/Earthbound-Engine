/// @description Insta-win detection


for (var i=1; i<4; i++) {
    if global.s_crying[i] or global.s_poison[i] or global.s_infected[i] or global.s_radiation[i]
    or global.s_asleep[i] or global.s_numb[i] or global.s_solid[i] or global.s_strange[i]
    or global.s_shocked[i] or global.s_cantconcentrate[i] or global.dead[i] and global.pl_count = i {
        pl_count -= 1;
    }
}
//If the number of enemies is greater than the number of characters who don't suffer from any statuses, you can't instantly win. 
if global.en_count > pl_count {
    instawin = 0;
} else {
    var enemy, highest_enemy_speed, lowest_player_speed, lowest_player_offense;
    for (var ii=1; ii<=global.en_count; ii++) {
        enemy = instance_create(0,0,global.enemy[ii])
        enemy.visible = 0
        e_off[ii] = enemy.e_off
        e_def[ii] = enemy.e_def
        e_hp[ii] = enemy.e_hp
        e_speed[ii] = enemy.e_speed
        e_droprate[ii] = enemy.e_droprate
        e_drop[ii] = enemy.e_drop
        e_name[ii] = enemy.e_name
        e_art[ii] = enemy.e_art
        e_exp[ii] = enemy.e_exp
        instance_deactivate_object(enemy)
    }
    if global.battle_type != 2 and !global.boss {
        if global.battle_type == 0 {
            //In a blue swirl, the highest speed among enemies is compared to the lowest speed among your current party members (even if unconscious). 
            //Each enemy's HP+defense is then compared to the lowest offense among your current party members (even if unconscious). 
            //If your party's stats are greater (not equal) in both cases, you instantly win the fight. 
            highest_enemy_speed = max(e_speed[1],e_speed[2],e_speed[3],e_speed[4],e_speed[5])
            lowest_player_speed = min(s_speed[1],iff(global.pl_count > 1,s_speed[2],1000),iff(global.pl_count > 2,s_speed[3],1000),iff(global.pl_count > 3,s_speed[4],1000))
            if lowest_player_speed > highest_enemy_speed {
                lowest_player_offense = min(s_off[1],iff(global.pl_count > 1,s_off[2],1000),iff(global.pl_count > 2,s_off[3],1000),iff(global.pl_count > 3,s_off[4],1000))
                if !(lowest_player_offense > (e_hp[1]+e_def[1])
                and lowest_player_offense > (e_hp[2]+e_def[2])
                and lowest_player_offense > (e_hp[3]+e_def[3])
                and lowest_player_offense > (e_hp[4]+e_def[4])
                and lowest_player_offense > (e_hp[5]+e_def[5])) {
                    write_line("Instawin: Failed lowest offense test.")
                    instawin = 0;
                }
            } else {
                write_line("Instawin: Failed lowest speed test.")
                instawin = 0;
            }
        } else {
            //In a green swirl, your characters who do not suffer from the aforementioned statuses are sorted by offense in descending order, and the enemies are sorted by HP in descending order. 
            //In turn, each character "attacks" the first enemy which is still "alive", dealing exactly 2*offense-defense "damage". 
            //If every enemy is "killed" this way, you instantly win the fight. 
            var player_list, enemy_list;
            player_list = ds_list_create();
            enemy_list  = ds_list_create();
            for (var i=1; i<global.pl_count+1; i++) {
                if !(global.s_crying[i] or global.s_poison[i] or global.s_infected[i] or global.s_radiation[i]
                or global.s_asleep[i] or global.s_numb[i] or global.s_solid[i] or global.s_strange[i]
                or global.s_shocked[i] or global.s_cantconcentrate[i] or global.dead[i]) {
                    ds_list_add(player_list,s_off[i]);
                }
            }
            for (var i=1; i<=global.en_count; i++) {
                ds_list_add(enemy_list,e_hp[i]+e_def[i]);
            }
            ds_list_sort(player_list,0)
            ds_list_sort(enemy_list,0)
            
            for (var i=1; i<global.pl_count+1; i++) {
                if !(global.s_crying[i] or global.s_poison[i] or global.s_infected[i] or global.s_radiation[i]
                or global.s_asleep[i] or global.s_numb[i] or global.s_solid[i] or global.s_strange[i]
                or global.s_shocked[i] or global.s_cantconcentrate[i] or global.dead[i]) {
                    for (var j=1; j<global.en_count+1; j++) {
                        //write_line(string(ds_list_find_value(player_list, i-1))+"/"+string(ds_list_find_value(enemy_list, j-1)))
                        if !is_undefined(ds_list_find_value(player_list, i-1)) and !is_undefined(ds_list_find_value(enemy_list, j-1)) {
                            if ds_list_find_value(enemy_list, j-1) != -1 {
                                if 2*ds_list_find_value(player_list, i-1) >= ds_list_find_value(enemy_list, j-1) {
                                    ds_list_delete(enemy_list, j-1);
                                }
                            }
                        }
                    }
                }
            }
            
            if !ds_list_empty(enemy_list) {
                write_line("Instawin: Failed because enemy list not empty.")
                instawin = 0;
            }
            ds_list_destroy(player_list);
            ds_list_destroy(enemy_list);
        }
    } else {
        instawin = 0;
    }
}

audio_stop_sound(sndenterbattle)
audio_stop_sound(sndbackattack)
audio_stop_sound(sndboss)

if instawin {
    instawin_r = 1
    audio_play_sound(sndenemyhit,0,0)
    audio_play_sound(sndEasyWin,0,0)
    droprate = e_droprate[dropenemy]
    drop = e_drop[dropenemy]
    dropenemyname = upper(e_art[dropenemy])+e_name[dropenemy]
    switch global.en_count {
        case 1: global.totalexp = e_exp[1]; break;
        case 2: global.totalexp = e_exp[1]+e_exp[2]; break;
        case 3: global.totalexp = e_exp[1]+e_exp[2]+e_exp[3]; break;
        case 4: global.totalexp = e_exp[1]+e_exp[2]+e_exp[3]+e_exp[4]; break;
        case 5: global.totalexp = e_exp[1]+e_exp[2]+e_exp[3]+e_exp[4]+e_exp[5]; break;
    }
    write_line("Instawin: Success.")
    alarm[1] = 1
} else {
    global.cutscene = 0
    instance_create(0,0,objFadeOutBattle);
}

