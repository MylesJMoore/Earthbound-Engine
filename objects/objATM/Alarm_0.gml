if instance_exists(objQuestion) { alarm[0] = 1 }
else {
    var a = instance_create(0,0,objTextBox);
    a.strno = 0
    switch answer {
        case 0:
            if global.money_saved = 0 {
                a.str[0] = "@ We're sorry, but your account has no funds."
            } else {
                a.str[0] = "@ Enter the amount to withdraw."
                text = a.str[0]
                alarm[1] = 1
            }
            break;
        case 1:
            if global.money = 0 {
                a.str[0] = "@ We're sorry, but you aren't carrying any money with you."
            } else {
                a.str[0] = "@ Enter the amount to deposit."
                text = a.str[0]
                alarm[3] = 1
            }
            break;
        case 2:
            a.str[0] = "@ Thank you for choosing us."
            break;
    } 
}

