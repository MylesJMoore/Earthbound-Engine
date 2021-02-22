if instance_exists(objStatDownFx) or instance_exists(objBattleMsg) {
    alarm[3] = 1
} else {
    val = irandom_range(18,25)
    var a = instance_create(0,0,objBattleMsg);
    a.strno = 0
    global.target[global._pl].patience -= val
    a.str[0] = upper(global.target[global._pl].e_art) + global.target[global._pl].e_name +"'s patience went down by "+string(val)+"!";
    var effect;
    effect = instance_create(global.target[global._pl].x,global.target[global._pl].y,objEnStatDownGFX)
    effect.alarm[0] = 1
    effect.color = make_color_rgb(34,177,76);
    audio_play_sound(sndStatDown,0,0)
    
    if global.target[global._pl].patience > -20 {
        alarm[11] = 1
    } else {
        alarm[4] = 1
    }
}

