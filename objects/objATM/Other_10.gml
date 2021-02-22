var a = instance_create(0,0,objTextBox);
a.strno = 1;
a.str[0] = "@ Welcome, "+global.s_name[1]+".#@ We're here for your money needs, no matter where you are." 
a.str[1] = "@ Do you want to withdraw or deposit?" 
question(3,"Withdraw","Deposit","Exit","","")
alarm[0] = 1;

