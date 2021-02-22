/// @description You win message

    global.s_exp[1] += newexp
        
    if global.pl_count > 1 {
        global.s_exp[2] += newexp
    }
    if global.pl_count > 2 {
        global.s_exp[3] += newexp
    }
    if global.pl_count > 3 {
        global.s_exp[4] += newexp
    }

alarm[3] = 1


