if !other.invincible and !ie(parDeactivator) {
    if !instance_exists(objBattleSwirl) {
        global.theroom = room
        global.enemy[1] = idx
        global.en_count = 1
        check_backattacks()
        write_line("Enemy 1 is "+object_get_name(global.enemy[1]))
    } else {
        if global.enemy[2] = 0 {
            global.enemy[2] = idx
            global.en_count = 2
            write_line("Enemy 2 is "+object_get_name(global.enemy[2]))
        } else if global.enemy[3] = 0 {
            global.enemy[3] = idx
            global.en_count = 3
            write_line("Enemy 3 is "+object_get_name(global.enemy[3]))
        } else if global.enemy[4] = 0 {
            global.enemy[4] = idx
            global.en_count = 4
            write_line("Enemy 4 is "+object_get_name(global.enemy[4]))
        } else if global.enemy[5] = 0 {
            global.enemy[5] = idx
            global.en_count = 5
            write_line("Enemy 5 is "+object_get_name(global.enemy[5]))
        }
        with objBattleSwirl { event_user(0) }
    }
    var a;
    a = instance_create(x,y,objOwEnemyBlink)
    a.depth = depth
    a.sprite_index = sprite_index
    a.image_speed = image_speed
    a.image_xscale = image_xscale
    a.image_blend = image_blend
    instance_destroy()
    exit
}

