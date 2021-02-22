/// @description Radiation
if !instance_exists(objBattleMsg) {
    if global.enemy[enmy].radiation = 1 {
        with instance_create(0,0,objBattleMsg) {
            strno = 0;
            str[0] = choose("The radiation is playing with the atoms in "+global.enemy[enmy].e_art+global.enemy[enmy].e_name+"'s body!",
            upper(global.enemy[enmy].e_art)+global.enemy[enmy].e_name+" took damage from the radioactive enviroment!")
        }
    }
    alarm[3] = 1
} else {
    alarm[2] = 1
}

