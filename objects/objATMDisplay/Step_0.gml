/// @description Keyboard controls
if ok {
    if keyboard_check_pressed(global.kb_back) {
        audio_play_sound(sndback,0,0)
        object.money = 0
        instance_destroy()
    } else if keyboard_check_pressed(global.kb_choose) {
        audio_play_sound(sndchoose,0,0)
        for (var i=0;i<10;i++) {
            sum+= power(10,i)*number[i]
        }
    
        if sum != 0 {
            if mode = 0 {
                min_sum = min(sum,global.money_saved)
                global.money_saved -= min_sum
                global.money += min_sum
            } else {
                min_sum = min(sum,global.money)
                global.money_saved += min_sum
                global.money -= min_sum
            }
        }
        
        object.money = min_sum
        instance_destroy()
    } else if keyboard_check_pressed(vk_left) {
        audio_play_sound(sndselect,0,0)
        if place = 9 { place = 0 } else { place++ }
    } else if keyboard_check_pressed(vk_up) {
        audio_play_sound(sndselect2,0,0)
        if number[place] = 9 { number[place] = 0 } else { number[place]++ }
    } else if keyboard_check_pressed(vk_right) {
        audio_play_sound(sndselect,0,0)
        if place = 0 { place = 9 } else { place-- }
    } else if keyboard_check_pressed(vk_down) {
        audio_play_sound(sndselect2,0,0)
        if number[place] = 0 { number[place] = 9 } else { number[place]-- }
    }
}

cursor_timer +=0.25

if cursor_timer = 1
{
cursor_image_index +=1
cursor_timer = 0
}



