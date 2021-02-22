if instance_exists(objFlashFx) or instance_exists(objBattleMsg) {
    alarm[2] = 1
} else {
    if rounds > global.en_count {
        alarm[11] = 1
        exit
    } else {
        if global.enemy[rounds] = 0 {
            alarm[2] = 1
            rounds++
            exit
        }
        var resist, ailment;
        resist = global.enemy[rounds].flash_resistance;
        ailment = ""
        failed = 0
        
        var a = instance_create(0,0,objBattleMsg);
        a.strno = 0
        
        if random(100) > (max(1,resist*30)) {
            switch type {
                case 0:
                    if random(8) < 7 {
                        if !global.enemy[rounds].crying {
                            global.enemy[rounds].crying = 1
                            ailment = "crying"
                        } else {
                            failed = 1
                        }
                    } else {
                        if !global.enemy[rounds].strange {
                            global.enemy[rounds].strange = 1
                            ailment = "strange"
                        } else {
                            failed = 1
                        }
                    }
                    break;
                case 1:
                    if random(8) < 5 {
                        if !global.enemy[rounds].crying {
                            global.enemy[rounds].crying = 1
                            ailment = "crying"
                        } else {
                            failed = 1
                        }
                    } else if random(8) < 1 {
                        if !global.enemy[rounds].strange {
                            global.enemy[rounds].strange = 1
                            ailment = "strange"
                        } else {
                            failed = 1
                        }
                    } else if random(8) < 1 {
                        if !global.enemy[rounds].numb {
                            global.enemy[rounds].numb = 1
                            global.enemy[enmy].numb_timer = 5
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
                        if !global.enemy[rounds].crying {
                            global.enemy[rounds].crying = 1
                            ailment = "crying"
                        } else {
                            failed = 1
                        }
                    } else if random(8) < 2 {
                        ailment = "death"
                    } else if random(8) < 1 {
                        if !global.enemy[rounds].strange {
                            global.enemy[rounds].strange = 1
                            ailment = "strange"
                        } else {
                            failed = 1
                        }
                    } else {
                        if !global.enemy[rounds].numb {
                            global.enemy[rounds].numb = 1
                            global.enemy[enmy].numb_timer = 5
                            ailment = "numb"
                        } else {
                            failed = 1
                        }
                    }
                    break;
                case 3:
                    if random(8) < 3 {
                        if !global.enemy[rounds].crying {
                            global.enemy[rounds].crying = 1
                            ailment = "crying"
                        } else {
                            failed = 1
                        }
                    } else if random(8) < 3 {
                        ailment = "death"
                    } else if random(8) < 1 {
                        if !global.enemy[rounds].strange {
                            global.enemy[rounds].strange = 1
                            ailment = "strange"
                        } else {
                            failed = 1
                        }
                    } else {
                        if !global.enemy[rounds].numb {
                            global.enemy[rounds].numb = 1
                            global.enemy[enmy].numb_timer = 5
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
                    a.str[0] = upper(global.enemy[rounds].e_art) + global.enemy[rounds].e_name + " couldn't stop crying!"
                    break;
                case "strange":
                    a.str[0] = upper(global.enemy[rounds].e_art) + global.enemy[rounds].e_name + " felt a little strange..."
                    break;
                case "numb":
                    a.str[0] = upper(global.enemy[rounds].e_art) + global.enemy[rounds].e_name + "'s body became numb!"
                    break;
                case "death":
                    a.str[0] = global.enemy[rounds].e_fin;
                    break;
            }
            
            if ailment != "death" {
                with instance_create(global.enemy[rounds].x,global.enemy[rounds].y,objEnemyAilmentFade) { 
                    sprite_index = global.enemy[objPKFlash.rounds].sprite_index    
                    image_index = global.enemy[objPKFlash.rounds].image_index 
                    color = make_color_rgb(115,0,223)
                }
            } else {
                audio_play_sound(sndedie,0,0)
                with global.enemy[rounds] {
                    alarm[0] = 1
                }
                global.enemy[rounds] = 0
            }
            
        } else {
            a.str[0] = "It had no effect on "+global.enemy[rounds].e_art + global.enemy[rounds].e_name + "!"
        }
        rounds++
        alarm[2] = 1
    }
}

