draw_set_color(c_white)
draw_set_halign(fa_center)
draw_set_font(global.thenfont)
draw_set_alpha(1)

draw_sprite_ext(sprRecord,0,x,y,1,1,record_angle,image_blend,image_alpha)
draw_sprite_ext(sprTurntableArm,0,x+300,y-74,1,1,arm_angle,image_blend,image_alpha)

draw_text(332,160,string_hash_to_newline(iff(audio_is_playing(now_playing),"~Now Playing~","")+"#"+
                  iff(now_playing_id < 10,"00",iff(now_playing_id < 100,"0",""))+string(now_playing_id)+": "+jukebox[now_playing_id,0]+"##"+
                  key_name(global.kb_choose)+" / Button "+ string(global.gamepad_choose)+" - "+iff(audio_is_playing(now_playing),iff(pause,"Resume","Pause"),"Play")+"#"+
                  key_name(global.kb_back)+" / Button "+ string(global.gamepad_back)+" - "+iff(audio_is_playing(now_playing),"Stop","Exit")+"#"))

draw_set_font(global.theifont)
draw_set_halign(fa_right)

draw_text(410,16,string_hash_to_newline("Jukebox"));

