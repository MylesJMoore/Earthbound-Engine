/// @description Basic bash damage
x = global.target[global._pl].x
y = global.target[global._pl].y
smash = 0;

if (random(1100) < global.s_guts[global._pl]) {
    instance_create(global.target[global._pl].x,global.target[global._pl].y-48,objSMAAAASH)
    dmg = 4*global.s_off[global._pl] - global.target[global._pl].e_def
    dmg += choose(1,-1)*ceil(random(dmg*0.25))
    smash = 1;
    event_user(0)
} else {
    if random(500)>(2*global.target[global._pl].e_speed - global.s_speed[global._pl]) or global.target[global._pl].asleep or global.target[global._pl].solids or global.target[global._pl].numb {
        dmg = 2*global.s_off[global._pl] - global.target[global._pl].e_def
        dmg += choose(1,-1)*ceil(random(dmg*0.25))
        event_user(0)
    } else {
        audio_play_sound(snddodge,0,0)
        var a = instance_create(0,0,objBattleMsg);
        a.strno = 0;
        a.str[0] = upper(global.target[global._pl].e_art) + global.target[global._pl].e_name+ " dodged swiftly!"
    }
}

