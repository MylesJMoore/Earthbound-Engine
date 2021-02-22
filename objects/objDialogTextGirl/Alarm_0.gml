if instance_exists(objQuestion) { alarm[0] = 1 }
else {
    var a = instance_create(0,0,objBigBox);
        switch answer {
            case 0:
                with a {
                    a.name[0] = "Girl"
                    a.strno = 0
                    a.str[0] = "@ How many players?"
                }
                question(4,"1","2","3","4","")
                alarm[1] = 1
                break;
            case 1:
                with a {
                    a.name[0] = "Girl"
                    a.strno = 0
                    a.str[0] = "@ Good night, sleep well."
                }
                alarm[9] = 1
                break;
            case 2:
                with a {
                    a.name[0] = "Girl"
                    a.strno = 0
                    a.str[0] = "@ I can heal you or give you random status effects."
                }
                break;
            case 3:
                with a {
                    a.name[0] = "Girl"
                    a.strno = 0
                    a.str[0] = "@ I can clear your inventory or fill it with items."
                }
                break;
            case 4:
                with a {
                    a.name[0] = "Girl"
                    a.strno = 0
                    a.str[0] = "@ Have fun."
                }
                break;
                
        } 
}

