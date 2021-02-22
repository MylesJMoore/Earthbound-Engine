for (var i=1; i<49; i++) {
    skillname[i] = global.skill[global.s_skill[objBattleController._turn,i],0]
    skillact[i] = global.skill[global.s_skill[objBattleController._turn,i],1]
    skillcost[i] = global.skill[global.s_skill[objBattleController._turn,i],2]
    skilltarget[i] = global.skill[global.s_skill[objBattleController._turn,i],3]
    skillletter[i] = global.skill[global.s_skill[objBattleController._turn,i],5]
    skilllearnt[i] = global.s_skill_learnt[objBattleController._turn,i]
}

