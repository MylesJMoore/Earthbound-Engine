audio_play_sound(sndpattack,0,0)
done = 0
rounds = 1;
lifeup = 0
s = global.item[ds_list_find_value(global.inv[global.current_inv],global.itemtouse[global._pl]),1]; //The name of the item
custom_lifeup = global.item[ds_list_find_value(global.inv[global.current_inv],global.itemtouse[global._pl]),21]

with instance_create(0,0,objBattleMsg) {
    if !global.s_strange[global._pl] {
        strno = 0;
        if global.pl_count = 1 {
            str[0] = global.s_name[global._pl] + " had the "+objItemLifeupAll.s+"!"
        } else {
            str[0] = global.s_name[global._pl] + " took the "+objItemLifeupAll.s+"#   and shared it with everyone!"
        }
        objItemLifeupAll.alarm[0] = 1;
    } else {
        strno = 1;
        str[0] = global.s_name[global._pl] + " is feeling a little strange..."
        if random(100)<= 33 {
            strno = 2;
            if global.pl_count = 1 {
                str[1] = global.s_name[global._pl] + " tried to have the "+objItemLifeupAll.s+"!"
            } else {
                str[1] = global.s_name[global._pl] + " took the "+objItemLifeupAll.s+"#   and tried to share it with everyone!"
            }
            str[2] = global.s_name[global._pl] + " threw it away instead!"
            objItemLifeupAll.alarm[1] = 1;
        } else {
            if global.pl_count = 1 {
                str[1] = global.s_name[global._pl] + " tried to have the "+objItemLifeupAll.s+"!"
            } else {
                str[1] = global.s_name[global._pl] + " took the "+objItemLifeupAll.s+"#   and tried to share it with everyone!"
            }
            objItemLifeupAll.alarm[0] = 1;
        }
        
    }
}

