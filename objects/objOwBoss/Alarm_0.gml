/// @description Start the battle
if instance_exists(objTextBox) { alarm[0] = 1 } else {
    audio_stop_all()
    start_battle(objEnBoss,0,0,0,0,1,0)
}

