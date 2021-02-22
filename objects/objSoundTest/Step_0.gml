/// @description Keyboard controls
if ok {
    if keyboard_check_pressed(vk_left) and !audio_is_playing(now_playing) {
        if now_playing_id > 0 {
            now_playing_id--;
            audio_play_sound(sndselect,0,0)
        }
    } else if keyboard_check_pressed(vk_right) and !audio_is_playing(now_playing) {
        if now_playing_id < max_song_id {
            now_playing_id++;
            audio_play_sound(sndselect,0,0)
        }
    } else if keyboard_check_pressed(global.kb_choose) and !restarting {
        audio_play_sound(sndchoose,0,0)
        if pause {
            audio_resume_sound(now_playing)
            pause = 0
            alarm[1] = 1
            alarm[3] = 60 
        } else {
            if audio_is_playing(now_playing) {
                audio_play_sound(sndchoose,0,0)
                pause = 1
                audio_pause_sound(now_playing)
            } else {
                arm_angle = arm_angle_start
                now_playing_audio = jukebox[now_playing_id,1]
                audio_length = audio_sound_length(now_playing_audio) * 60
                now_playing = audio_play_sound(now_playing_audio,10,0)
                alarm[1] = 1
                alarm[3] = 60 
            }
        }
    } else if keyboard_check_pressed(global.kb_back) {
        if !audio_is_playing(now_playing) {
            audio_play_sound(sndback,0,0)
            ok = 0;
            global.theroom = rmMenu
            instance_create(0,0,objFadeOut)
        } else {
            audio_stop_sound(now_playing)
            pause = 1
            restarting = 1
            alarm[2] = 1
        }
    }
}

///Update song position
write_line(string(audio_is_playing(now_playing)))

