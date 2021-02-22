var a = instance_create(0,0,objTextBox);

a.str[0] = iff(get_flag(_flag) == flag_off,msg[0],msg[1])

set_flag(_flag,iff(get_flag(_flag) == flag_off,flag_on,flag_off))

