action_inherited();
//Basic info
e_name          = "Template"// Its name, wow.
e_pron          = "it";     // Personal
e_pron_pos      = "its";    // Posessive
e_pron_obj      = "its";    // Object (not very useful
e_pron_self     = "itself"; // Reflexive
e_art           = "the "    // Remember to place the trailing space. Can be just an empty string if you want, that doesn't require the space.
e_fin           = upper(e_art)+e_name+" became tame!"   // The message shown when you kill it.
e_welcome[1]    = "You encounter " + e_art+e_name+"."   // The message shown when you encounter it alone.
e_welcome[2]    = "You encounter " + e_art+e_name+" and "+e_pron_pos+" cohort."     // The message shown when you encounter it with a partner.
e_welcome[3]    = "You encounter " + e_art+e_name+" and "+e_pron_pos+" cohorts."    // The message shown when you encounter it with two or more partners.
e_description   = ""        // Enemy's description, can be used in spy-type skills or whatever.
e_music         = noone     // Battle theme. A gamemaker sound index. Use noone if you want it to be silent.
bg              = 0     // Battle background. It is an init_background index.
bg2             = -1    // Same as before but it appears in front of the first bg. Great for layering. Using a value -1 will not draw anything.
e_last          = 0     // If it's 1, enemies will do action 15 upon death

//Stats
e_hp            = 1;
e_pp            = 1;
e_off           = 1;    // Offense
e_def           = 1;    // Defense
e_guts          = 1;
e_speed         = 1;
e_luck          = 1;
e_exp           = 1;    
e_money         = 1;    // Money drop. This is disabled, but you can enable it again by changing things in objBattleKiller.
e_drop          = 0;    // Item that the enemy drops when it's killed. It is an init_items index.
e_droprate      = 0;    // Chance to drop the item. Out of 100

//Resistances
fire_resistance      = 0   // Resistances are 0: no resistance to 4: immune. Can be negative if you want weaknesses.
freeze_resistance    = 0
thunder_resistance   = 0 
hypno_resistance     = 0
paralysis_resistance = 0
flash_resistance     = 0

//Status effects
poison          = 0;    // Set any of these to 1 if you want the enemy to spawn with an affliction.
infected        = 0;
crying          = 0;
radiation       = 0;
numb            = 0;
solids          = 0;
strange         = 0;
shocked         = 0;
asleep          = 0;
cantconcentrate = 0;

//Effect timers
numb_timer      = 5;    // How many turns the enemy will be numb if you set it to spawn numb
sleep_timer     = 5;    // How many turns the enemy will be asleep if you set it to spawn asleep
conc_timer      = 3;    // How many turns the enemy will be being unable to concentrate if you set it to spawn being unable to concentrate

//Shields
has_shield      = 0;    // Set any of these to 1 if you want the enemy to spawn with a shield. 
has_pshield     = 0;    // Normally you can only have one shield at a time, but it might be fun to play around with this by giving an enemy more that one shield.
has_psishield   = 0;
has_psipshield  = 0;

//Shield life
shieldlife      = 3;    // The strength of the starting shield. Since it's normal to only have only shield, if you gave multiple shields to an enemy, they'll deplete at the same time.

//Stat related stuff that shouldn't be changed
e_realoff       = e_off;
e_realdef       = e_def;
e_realguts      = e_guts;
e_grd           = 1;    // You CAN actually change this to 2 if you want the enemy to spawn in guard. Quite useless, since it's reset to 1 every turn.
                        // Just don't set this to zero, or you'll break it.

