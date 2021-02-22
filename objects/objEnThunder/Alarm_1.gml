if instance_exists(objBattleMsg) or instance_exists(objEnThunderDamage) {
    alarm[1] = 1
} else {
    if rounds > type+1 {
        alarm[11] = 1
    } else {
        active = 1
        
        if backfire {
            nohit = !(random(4) < global.en_count)
        } else {
            nohit = !(random(4) < global.pl_count)
        }
        
        if !nohit {
            visible = !backfire
            audio_play_sound(sndthunderA,0,0)
        } else {
            visible = 0
            audio_play_sound(sndthunder,0,0); audio_sound_gain(sndthunder,0.4,0)
        }
    
        
        alarm[2] = 2
    }
}

