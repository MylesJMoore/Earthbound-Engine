/// @description Defense Down
global.custom_msg[0] = upper(e_art)+e_name+" gave off an undescribable smell!"

with instance_create(0,0,objEnStatDown) {
    stat = 1
    notpsi = 1
}

