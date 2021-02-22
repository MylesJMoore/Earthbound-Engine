
    if rnd = 0
    {
        //Fade in
        alpha += 0.1;

        if (alpha >= 1) 
        {
            rnd = 1
            exit
        }
    }
    
    if rnd = 1
    {
        //Fade out
        alpha -= 0.1;

        if (alpha <= 0) 
        {
            rnd = 2
            exit
        }
    }
    
    if rnd = 2
    {
        //Fade in
        alpha += 0.1;

        if (alpha >= 1) 
        {
            rnd = 3
            exit
        }
    }
    
    if rnd = 3
    {
        //Fade out
        alpha -= 0.1;

        if (alpha <= 0) 
        {
            rnd = 4
            with objButterflyGet { instance_destroy() }
            var a = instance_create(0,0,objTextBox);
            a.strno = 0
            if global.pl_count < 2 {
                a.str[0] = "@ The magic butterfly made " + global.s_name[1] + " relax."
            } else {
                a.str[0] = "@ The magic butterfly made " + global.s_name[1] + "'s party relax."
            }
            alarm[0] = 1
        }
    }
    

