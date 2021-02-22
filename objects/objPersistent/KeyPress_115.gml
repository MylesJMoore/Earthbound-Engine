if keyboard_check_direct(vk_lalt) {
    game_end();
} else {
    if window_get_fullscreen() {
        window_set_fullscreen(false);
    } else {
        window_set_fullscreen(true);
    }
    display_set_gui_maximise();
}

