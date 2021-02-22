/// @description Bash
// Leave this out and the attack will use a default message.
global.custom_msg[0] = upper(e_art)+e_name+"'s attack!" 
// You can use anything you want from the Battle System/Attacks/By an enemy folder here.
// The rule is not to use anything that ends in "Damage" though.
// For example, if you want a freeze attack, change objEnCustomBash to objEnFreeze.
// You can also use the "with" keybord to change how some attacks behave. objEnCustomBash has many options you can use.
// You can use the type variable with PSI attacks to change their tier, like so:
// with ic(0,0,objEnFreeze) { type = 2 }
// ^ This will trigger Freeze gamma.
ic(0,0,objEnCustomBash) 

