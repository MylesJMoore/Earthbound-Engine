/// @description Spread spores
global.custom_msg[0] = upper(e_art)+e_name+" scattered some mold spores!"
with instance_create(0,0,objEnCustomBash) {
    attacks = 1
    ailment = 1
    ailmentrate = 33.3
    nodamage = 1
}

