
if timer < 240 {
    alpha += 1/160
    timer += 1
    if alpha > 0.8 { donefor = 1 }
    alarm[0] = 1
} else {
    if !donefor {
        alpha = 0
        visible = 0
        with instance_create(0,0,objBattleMsg) {
            str[0] = "But it had no effect."
        }
        alarm[1] = 1
    } else {
        alarm[2] = 1
        exit
    }
}

