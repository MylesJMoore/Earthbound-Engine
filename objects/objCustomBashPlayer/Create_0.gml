/// @description A very customizable attack

//Attack attributes
bashlike    = 1;    //Whether to consider offense and defense
customdmg   = 0;    //Damage to inflict if not bashlike
level       = 2;    //1: Low level; 2: Like a normal bash; 3: High level; 4: Like a smash attack
attacks     = 1;    //Number of consecutive attacks
nosmash     = 0;    //Disables smash
element     = 0;    //0: Non-elemental; 1: Fire; 2: Freeze; 3: Thunder
breakshield = 0;    //Whether to break physical shields.
dodgeable   = 1;    //Self-explanatory
ailment     = 0;    //0: None; 1: Crying; 2: Poison; 3: Infection; 4: Sleep; 5: Numbness; 6: Solidification; 7: Strangeness; 8: Shock; 9: Can't concentrate; 10: Turn around
ailmentrate = 0;    //The chance (out of 100) the attack has to inflict the aforementioned status ailment
laser       = 0;    //Whether to show "...narrowly missed hitting the target!" when the attack misses. Also makes a laser sound if it's on.
nodamage    = 0;    //Whether to disable damage for this attack (used to, for example, only cause a status ailment or break a shield)
removeitem  = 0;    //Whether the item used is gone after one use
nomiss      = 0;    //Disables missing
nohiteffect = 0;    //Disables the blinking hit effect

rounds      = 0;
smash       = 0;
backfire    = 0;
failed      = 1;
tgt         = 0;
event_perform(ev_other,ev_user0)

