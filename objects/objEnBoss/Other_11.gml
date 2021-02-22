/// @description Bash
global.custom_msg[0] = upper(e_art)+e_name+choose("'s attack!",
                                               " sent the garbage flying!",
                                               " twisted, bent, and coiled around you!")
instance_create(0,0,objEnAttack)

