

if global.enemy[1] = 0 { global.error = "The first enemy slot is empty"; instance_destroy(); room_goto(rmFallback); exit;}

with all { x = round(x); y =round(y)}

in_battle = 1;
ok = 0;
runaway = 0;
_turn = 1;

_x[1] = 23+v_offset
_x[2] = 88+v_offset
_x[3] = 152+v_offset
_y[1] = 14
_y[2] = 29

cursor_x = _x[1];
cursor_y = _y[1];
cursor_image_index = 0;
cursor_timer = 0;
//Labels
label_bash[4] = ""
label_goods[4] = ""
label_run[4] = ""
label_guard[4] = ""
label_psi[4] = ""
label_special[4] = ""
//Disabled buttons
no_bash[4] = 0
no_goods[4] = 0
no_run[4] = 0
no_guard[4] = 0
no_psi[4] = 0
no_special[4] = 0

//Place enemies on the screen and initialize drops
//var e;
for (var i=1;i<6;i++) {
    e[i] = 0
}

switch global.en_count {
    case 1:
        e[1] = instance_create(160+v_offset,120,global.enemy[1]).id;
        dropenemy = e[1];
        break;
    case 2:
        e[1] = instance_create(102+v_offset,120,global.enemy[1]).id;
        e[2] = instance_create(218+v_offset,120,global.enemy[2]).id; 
        dropenemy = choose(e[1],e[2]);
        break;
    case 3:
        e[1] = instance_create(160+v_offset,120,global.enemy[1]).id; 
        e[2] = instance_create(80+v_offset,96,global.enemy[2]).id;
        e[3] = instance_create(240+v_offset,96,global.enemy[3]).id;
        dropenemy = choose(e[1],e[2],e[3]);
        break;
    case 4:
        e[1] = instance_create(25+v_offset,120,global.enemy[1]).id;
        e[2] = instance_create(115+v_offset,120,global.enemy[2]).id;
        e[3] = instance_create(205+v_offset,120,global.enemy[3]).id;
        e[4] = instance_create(295+v_offset,120,global.enemy[4]).id;
        dropenemy = choose(e[1],e[2],e[3],e[4]);
        break;
    case 5:
        e[1] = instance_create(160+v_offset,130,global.enemy[1]).id;
        e[2] = instance_create(100+v_offset,86,global.enemy[2]).id;
        e[3] = instance_create(220+v_offset,86,global.enemy[3]).id;
        e[4] = instance_create(40+v_offset,130,global.enemy[4]).id;
        e[5] = instance_create(280+v_offset,130,global.enemy[5]).id;
        dropenemy = choose(e[1],e[2],e[3],e[4],e[5]);
        break;
}

for (var i=1;i<6;i++) {
    global.enemy[i] = e[i]
}

droprate = dropenemy.e_droprate
drop = dropenemy.e_drop
dropenemyname = upper(dropenemy.e_art)+dropenemy.e_name

//Create the in-battle NPC instances
switch global.helpernpc {
    case 1:
        instance_create(0,0,objMikuBattle)
        break;
}

//Load the animated backgrounds
with instance_create(0,0,objBattleBackground) {
    back = global.battle_bg[global.enemy[1].bg,0];
    effect = global.battle_bg[global.enemy[1].bg,1]
    frequency = global.battle_bg[global.enemy[1].bg,2];
    phaserate = global.battle_bg[global.enemy[1].bg,3];
    amplitude = global.battle_bg[global.enemy[1].bg,4];
    alpha = global.battle_bg[global.enemy[1].bg,5];
    speedx = global.battle_bg[global.enemy[1].bg,6];
    speedy = global.battle_bg[global.enemy[1].bg,7];
    scanline = global.battle_bg[global.enemy[1].bg,8];
    depth = 1000
}

if global.enemy[1].bg2 != -1 {
    with instance_create(0,0,objBattleBackground) {
        back = global.battle_bg[global.enemy[1].bg2,0];
        effect = global.battle_bg[global.enemy[1].bg2,1]
        frequency = global.battle_bg[global.enemy[1].bg2,2];
        phaserate = global.battle_bg[global.enemy[1].bg2,3];
        amplitude = global.battle_bg[global.enemy[1].bg2,4];
        alpha = global.battle_bg[global.enemy[1].bg2,5];
        speedx = global.battle_bg[global.enemy[1].bg2,6];
        speedy = global.battle_bg[global.enemy[1].bg2,7];
        scanline = global.battle_bg[global.enemy[1].bg2,8];
        depth = 999
    }
}

//Run away stuff
switch global.pl_count {
    case 1:
        highest_pc_speed = global.s_speed[1];
        break;
    case 2:
        highest_pc_speed = max(global.s_speed[1],global.s_speed[2]);
        break;
    case 3:
        highest_pc_speed = max(global.s_speed[1],global.s_speed[2],global.s_speed[3]);
        break;
    case 4:
        highest_pc_speed = max(global.s_speed[1],global.s_speed[2],global.s_speed[3],global.s_speed[4]);
        break;
}

switch global.en_count {
    case 1:
        highest_en_speed = global.enemy[1].e_speed;
        break;
    case 2:
        highest_en_speed = max(global.enemy[1].e_speed,global.enemy[2].e_speed);
        break;
    case 3:
        highest_en_speed = max(global.enemy[1].e_speed,global.enemy[2].e_speed,global.enemy[3].e_speed);
        break;
    case 4:
        highest_en_speed = max(global.enemy[1].e_speed,global.enemy[2].e_speed,global.enemy[3].e_speed,global.enemy[4].e_speed);
        break;
    case 5:
        highest_en_speed = max(global.enemy[1].e_speed,global.enemy[2].e_speed,global.enemy[3].e_speed,global.enemy[4].e_speed,global.enemy[5].e_speed);
        break;
}
number_of_turns = 0

//Other player variables
for (var i=1;i<global.pl_count+1;i++) {
    global.s_realoff[i] = global.s_off[i];
    global.s_realdef[i] = global.s_def[i];
    global.s_realguts[i] = global.s_guts[i];
    global.s_guard[i] = 1;
}

msg = ""

alarm[0] = 1
alarm[4] = 60

// Play music
if !global.mute { audio_play_sound(global.enemy[1].e_music,1,1) }

