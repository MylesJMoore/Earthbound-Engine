for (var i=1; i<=64; i++) {
    skillname[i] = global.skill[global.s_skill[global.current_inv+1,i],0]
    skillact[i] = global.skill[global.s_skill[global.current_inv+1,i],1]
    skillcost[i] = global.skill[global.s_skill[global.current_inv+1,i],2]
    skilltarget[i] = global.skill[global.s_skill[global.current_inv+1,i],3]
    skilldesc[i] = global.skill[global.s_skill[global.current_inv+1,i],4]
    skillletter[i] = global.skill[global.s_skill[global.current_inv+1,i],5]
    skilllearnt[i] = global.s_skill_learnt[global.current_inv+1,i]
}

