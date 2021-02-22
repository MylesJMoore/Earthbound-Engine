/// @description A very customizable attack

//Attack attributes
bashlike    = 1;    //Whether to consider offense and defense
customdmg   = 0;    //Damage to inflict if not bashlike
level       = 2;    //0: Always 1 HP damage; 1: Low level; 2: Like a normal bash; 3: High level; 4: Like a smash attack; 5+: Absolutely fucking broken (especially with smash turned on)
attackall   = 0;    //Attack everyone in order, once each
attacks     = 1;    //Number of consecutive attacks (only if !attackall)
nosmash     = 0;    //Disables smash
element     = 0;    //0: Non-elemental; 1: Fire; 2: Freeze; 3: Thunder
breakshield = 0;    //Whether to break physical shields or not
dodgeable   = 1;    //Whether it can be dodged or not
ailment     = 0;    //0: None; 1: Crying; 2: Poison; 3: Infection; 4: Sleep; 5: Numbness; 6: Solidification; 7: Strangeness; 8: Shock; 9: Can't concentrate
ailmentrate = 0;    //The chance (out of 100) the attack has to inflict the aforementioned status ailment
laser       = 0;    //Whether to show "...narrowly missed hitting the target!" when the attack misses or not. Also makes a laser sound if it's on.
nodamage    = 0;    //Whether to disable damage for this attack (used to, for example, only cause a status ailment or break a shield) or not
nomiss      = 0;    //Disables missing
endturn     = 1;    //Whether the turn ends after the attack or not
showmsg     = 1;

rounds      = 0;
smash       = 0;   
backfire    = 0;  
failed      = 1;    

alarm[3] = 1;

