/// @description Deposit
if instance_exists(objATMDisplay) {
    alarm[4] = 1
} else {
    var a = instance_create(0,0,objTextBox);
    a.strno = 1
    if money < 1 {
        a.str[0] = "@ The operation was cancelled by the user."
        a.str[1] = "@ Would you like anything else?" 
        question(3,"Withdraw","Deposit","Exit","","")
        alarm[0] = 1
    } else {
        a.str[0] = "@ Your account was just credited $"+string(money)+"."
        a.str[1] = "@ Would you like anything else?" 
        question(3,"Withdraw","Deposit","Exit","","")
        alarm[0] = 1
    }
}

