if instance_exists(objPlayer) {
    if objPlayer.speed = 0 or (!global.s_poison[1] and !global.s_poison[2] and !global.s_poison[3] and !global.s_poison[4]
    and !global.s_infected[1] and !global.s_infected[2] and !global.s_infected[3] and !global.s_infected[4]) 
    or ie(parDeactivator) or ie(objBattleSwirl) or global.cutscene or room = rmGameOver or (objDebug.active and objDebug.can_input) {
        alarm[0] = 1 
    } else {
        flash = 0
        for (var i=1;i<global.pl_count+1;i++) {
            if global.s_hp[i] > 1 {
                if global.s_poison[i] or global.s_infected[i]{
                    var dmg;
                    if global.s_poison[i] {
                        dmg = 20+irandom_range(-5,5)
                    } else if global.s_infected[i] {
                        dmg = 40+irandom_range(-10,10)
                    }
                    if (global.s_hp[i] - dmg) <= 0 {
                        with instance_create(0,0,objTextBox) { instance_destroy() }
                        var a = instance_create(0,0,objTextBox);
                        a.strno = 0
                        a.str[0] = "@ Caution! "+global.s_name[i]+"'s condition is currently critical.#@ Seek attention immediately, or "+global.s_name[i]+" could collapse."
                        objPlayer.speed = 0
                        global.s_hp[i] = 1
                    } else {
                        write_line("OK")
                        global.s_hp[i] -= dmg
                    }
                }
            }
        }
    }
}
alarm[0] = 3*room_speed

