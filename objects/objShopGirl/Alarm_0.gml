/// @description Buy or sell?
if instance_exists(objQuestion) { alarm[0] = 1 }
else {
    var a = instance_create(0,0,objTextBox);
        switch answer {
            case 0:
                a.name[0] = "Girl"
                a.strno = 0
                a.str[0] = "@ I've got lots of stuff to sell."
                alarm[1] = 1
                break;
            case 1:
                a.name[0] = "Girl"
                a.strno = 0
                a.str[0] = "@ I can buy stuff you don't need, for half its market price.#@ So what will it be?"
                alarm[4] = 1
                break;
            case 2:
                a.name[0] = "Girl"
                a.strno = 0
                a.str[0] = "@ Get outta here if you aren't gonna buy anything!"
                break;
                
        } 
}

