global.flag[4] = 1
for (var i=2; i<5; i++){
    if instance_exists(global.enemy[i]) {global.enemy[i].e_hp = 0}
}

action_inherited();
