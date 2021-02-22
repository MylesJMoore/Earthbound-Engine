if instance_number(objBattleSwirl) > 1 { instance_destroy(); exit }

//Instawin stuff
instawin = 1 
instawin_r = 0
pl_count = global.pl_count 
en_count = global.en_count 
for (var i=1; i<6; i++) {
    e_speed[i] = 0
    e_off[i] = 0
    e_def[i] = 0
    e_hp[i] = 0
    e_droprate[i] = 0
    e_drop[i] = 0
    e_name[i] = ""
    e_art[i] = ""
    e_exp[i] = 0
    if i<5 {
        s_speed[i] = global.s_speed[i]
        s_off[i] = global.s_off[i]
    }
}

dropenemy = 0
droprate = 0
drop = 0
_drop = 0
dropenemyname = ""
instawinstep = 0

//The other stuff
with objButterfly { instance_destroy() } 

image_speed        = 0.45
sprite_index       = choose(sprBattleEntry1,sprBattleEntry2,sprBattleEntry3)
image_alpha        = 0.5
done               = 0
if instance_exists(objPlayer){
    objPlayer.canmove = 0
    objPlayer.speed   = 0
}
x=__view_get( e__VW.XView, 0 )
y=__view_get( e__VW.YView, 0 )

audio_pause_sound(global.bgMusic_)

blue = make_color_rgb(0,0,208)
green = make_color_rgb(8,192,135)
red = make_color_rgb(207,0,0)

if !global.boss {
    switch global.battle_type {
        case 0: color = blue; sound = audio_play_sound(sndenterbattle,0,0); break;
        case 1: color = green; sound = audio_play_sound(sndenterbattle,0,0); break;
        case 2: color = red; sound = audio_play_sound(sndbackattack,0,0); break;
    }
} else {
    color = blue;
    audio_play_sound(sndboss,0,0)
}


event_user(0)


