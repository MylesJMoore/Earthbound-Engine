/// @description Make cry
global.custom_msg[0] = upper(e_art)+e_name+" spread some filth!"
with instance_create(0,0,objEnCustomBash) {
    attacks = 1
    ailment = 1
    ailmentrate = 25
}

