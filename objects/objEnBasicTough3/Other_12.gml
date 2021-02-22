/// @description Solidify
global.custom_msg[0] = upper(e_art)+e_name+" gave you a big hug!"
with instance_create(0,0,objEnCustomBash) {
    attacks = 1
    ailment = 6
    ailmentrate = 100
    nodamage = 1
}

