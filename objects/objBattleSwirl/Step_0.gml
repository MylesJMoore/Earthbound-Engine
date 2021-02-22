x=__view_get( e__VW.XView, 0 )
y=__view_get( e__VW.YView, 0 )

/*if instance_exists(objPlayer) {
    global.thex = objPlayer.x
    global.they = objPlayer.y
}*/

if image_index > image_number-1 and done = 0
{
    image_index = image_number-1
    image_speed = 0
    done = 1
    if instance_exists(objOwEnemyBlink) {
        global.thex = objOwEnemyBlink.x
        global.they = objOwEnemyBlink.y
    } else if instance_exists(objPlayer) {
        global.thex = objPlayer.x
        global.they = objPlayer.y
    }
    if !global.boss { alarm[0] = 120 } else { alarm[0] = 90 }
}

/* */
/*  */
