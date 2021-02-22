/// @description Disrupt senses
global.custom_msg[0] = upper(e_art)+e_name+" disrupted your senses!"
with instance_create(0,0,objEnCustomBash) {
    attacks = 1;
    ailment = 9;
    ailmentrate = 100;
    nodamage = 1;
}

