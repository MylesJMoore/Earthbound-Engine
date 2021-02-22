    x = global.healthbar[pl].x+32
    y = global.healthbar[pl].y
    depth = global.healthbar[pl].depth
    if global.s_crying[pl] or global.s_solid[pl] or global.s_infected[pl] or global.s_poison[pl] or 
       global.s_radiation[pl] or global.s_numb[pl] or global.s_strange[pl] or global.s_shocked[pl] or
       global.s_asleep[pl] or global.s_cantconcentrate[pl] {
        visible = !global.dead[pl]
    } else { visible = 0 }

