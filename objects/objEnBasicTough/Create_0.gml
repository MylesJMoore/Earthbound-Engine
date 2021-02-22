//Basic info
e_name          = "Tough Enemy 1"
e_pron          = "it";
e_pron_pos      = "its";
e_pron_obj      = "its";
e_pron_self     = "itself";
e_art           = "the "
e_fin           = upper(e_art)+e_name+" disappeared!"
e_welcome[1]    = "You approach "+e_art+e_name+"!"
e_welcome[2]    = "You approach "+e_art+e_name+" and "+e_pron_pos+" cohort!"
e_welcome[3]    = "You approach "+e_art+e_name+" and "+e_pron_pos+" cohorts!"
e_description   = "Description."
e_music         = bgmNull
bg              = 5     // Backgrounds (-1 means no BG)
bg2             = -1
e_last          = 0     // If it's 1, enemies will do action 15 upon death

//Stats
e_hp            = 30;
e_pp            = 0;
e_off           = 8;
e_def           = 2;
e_guts          = 0;
e_speed         = 4;
e_luck          = 1;
e_exp           = 25;
e_money         = 4;
e_drop          = 6;
e_droprate      = 1;   //Out of 100.
e_log_id        = 2;

//Resistances
fire_resistance      = 0   
freeze_resistance    = 0
thunder_resistance   = 0 
hypno_resistance     = 1
paralysis_resistance = 0
flash_resistance     = 0

//Status effects
poison          = 0;
infected        = 0;
crying          = 0;
radiation       = 0;
numb            = 0;
solids          = 0;
strange         = 0;
shocked         = 0;
asleep          = 0;
cantconcentrate = 0;
numb_timer       = 5; sleep_timer       = 5;
conc_timer      = 3;

//Shields
has_shield      = 0;
has_pshield     = 0;
has_psishield   = 0;
has_psipshield  = 0;
shieldlife      = 3;

//Stat related stuff that shouldn't be changed
e_realoff       = e_off;
e_realdef       = e_def;
e_realguts      = e_guts;
e_grd           = 1;

action_inherited();
