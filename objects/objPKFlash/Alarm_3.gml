if instance_exists(objFlashFx) or instance_exists(objBattleMsg) {
    alarm[3] = 1
} else {
    if rounds > global.pl_count {
        alarm[11] = 1
        exit
    } else {
        if global.dead[rounds] {
            alarm[3] = 1
            rounds++
            exit
        }
        var resist, ailment;
        resist = global.flash_resistance[rounds];
        ailment = ""
        failed = 0
        
        var a = instance_create(0,0,objBattleMsg);
        a.strno = 0
        
        if random(100) > (max(1,resist*30)) {
            switch type {
                case 0:
                    if random(8) < 7 {
                        if !global.s_crying[rounds] {
                            global.s_crying[rounds] = 1
                            ailment = "crying"
                        } else {
                            failed = 1
                        }
                    } else {
                        if !global.s_strange[rounds] {
                            global.s_strange[rounds] = 1
                            ailment = "strange"
                        } else {
                            failed = 1
                        }
                    }
                    break;
                case 1:
                    if random(8) < 5 {
                        if !global.s_crying[rounds] {
                            global.s_crying[rounds] = 1
                            ailment = "crying"
                        } else {
                            failed = 1
                        }
                    } else if random(8) < 1 {
                        if !global.s_strange[rounds] {
                            global.s_strange[rounds] = 1
                            ailment = "strange"
                        } else {
                            failed = 1
                        }
                    } else if random(8) < 1 {
                        if !global.s_numb[rounds] {
                            global.s_numb[rounds] = 1
                            global.numb_timer[rounds] = 5
                            ailment = "numb"
                        } else {
                            failed = 1
                        }
                    } else {
                        ailment = "death"
                    }
                    break;
                case 2:
                    if random(8) < 4 {
                        if !global.s_crying[rounds] {
                            global.s_crying[rounds] = 1
                            ailment = "crying"
                        } else {
                            failed = 1
                        }
                    } else if random(8) < 2 {
                        ailment = "death"
                    } else if random(8) < 1 {
                        if !global.s_strange[rounds] {
                            global.s_strange[rounds] = 1
                            ailment = "strange"
                        } else {
                            failed = 1
                        }
                    } else {
                        if !global.s_numb[rounds] {
                            global.s_numb[rounds] = 1
                            global.numb_timer[rounds] = 5
                            ailment = "numb"
                        } else {
                            failed = 1
                        }
                    }
                    break;
                case 3:
                    if random(8) < 3 {
                        if !global.s_crying[rounds] {
                            global.s_crying[rounds] = 1
                            ailment = "crying"
                        } else {
                            failed = 1
                        }
                    } else if random(8) < 3 {
                        ailment = "death"
                    } else if random(8) < 1 {
                        if !global.s_strange[rounds] {
                            global.s_strange[rounds] = 1
                            ailment = "strange"
                        } else {
                            failed = 1
                        }
                    } else {
                        if !global.s_numb[rounds] {
                            global.s_numb[rounds] = 1
                            global.numb_timer[rounds] = 5
                            ailment = "numb"
                        } else {
                            failed = 1
                        }
                    }
                    break;
            }
        } else { 
            failed = 1
        }
        
        if !failed {
            switch ailment{
                case "crying":
                    a.str[0] = global.s_name[rounds] + " couldn't stop crying!"
                    break;
                case "strange":
                    a.str[0] = global.s_name[rounds] + " felt a little strange..."
                    break;
                case "numb":
                    a.str[0] = global.s_name[rounds] + "'s body became numb!"
                    break;
                case "death":
                    a.str[0] = global.s_name[rounds] + " got hurt and collapsed!"
                    break;
            }
            
            if ailment != "death" {
                with instance_create(global.healthbar[rounds].x,global.healthbar[rounds].y,objHealthBarRed) { 
                    color = make_color_rgb(115,0,223);
                } 
                audio_play_sound(sndailment,0,0)
            } else {
                global.healthbar[rounds].hp_actual = 0
                global.s_hp[rounds] = 0
                global.dead[rounds] = 1
                audio_play_sound(snddie,0,0)
            }
            
        } else {
            a.str[0] = "It had no effect on "+global.s_name[rounds] + "!"
        }
    
        alarm[3] = 1
        rounds++
    }
}

