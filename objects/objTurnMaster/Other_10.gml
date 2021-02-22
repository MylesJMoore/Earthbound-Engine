/// @description Create battle killer
for (var i=1;i<global.pl_count+1;i++) {
    with global.healthbar[i] {
        y = ystart
    }
}
instance_create(0,0,objBattleKiller)

