/// @description End the battle 

if instance_exists(objBattleMsg) {
    alarm[11] = 1
} else {
    audio_stop_all()
    global.boss = 0
    instance_create(0,09,objFadeOutBattle)
}

