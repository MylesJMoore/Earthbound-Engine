ok = 0;
objPlayer.canmove = 0;
xyou = 0;
yyou = 0;
mark_x[0] = 0;
mark_y[0] = 0;

// Where to place the YOU ARE HERE sign
switch room {
    case rmBedroom:
        sprite_index = sprPerseveranceMap1;
        xyou = 360;
        yyou = 130;
        break;
    case rmPerseverance1:
        sprite_index = sprPerseveranceMap1;
        xyou = 312;
        yyou = 147;
        break;
    case rmPerseverance2:
        sprite_index = sprPerseveranceMap1;
        if (objPlayer.x < 528 and objPlayer.y < 344) {
            xyou = 142;
            yyou = 94;
        } else if (objPlayer.x < 528 and objPlayer.y > 344 and objPlayer.y < 592) {
            xyou = 235;
            yyou = 116;
        } else if (objPlayer.x > 528 and objPlayer.x < 1100 and objPlayer.y < 344) {
            //mid room above
            xyou = 216;
            yyou = 97;
        } else if (objPlayer.x > 528 and objPlayer.x < 1100 and objPlayer.y > 344 and objPlayer.y < 592) {
            //mid room below
            xyou = 220;
            yyou = 116;
        } else if (objPlayer.x > 1100) {
            xyou = 203;
            yyou = 97;
        } else if (objPlayer.y > 600) {
            xyou = -7;
            yyou = 28;
        }
        break;
    case rmPerseverance3:
        sprite_index = sprPerseveranceMap1;
        xyou = 200;
        yyou = 100;
        break;
    case rmPerseverance4:
        sprite_index = sprPerseveranceMap1;
        xyou = 88;
        yyou = 92;
        break;
    case rmBathroom1:
        sprite_index = sprPerseveranceMap1;
        xyou = 261;
        yyou = 178;
        break;
    case rmControlRoom:
        sprite_index = sprPerseveranceMap1;
        xyou = 35;
        yyou = 41;
        break;
    case rmStorage1:
        if (objPlayer.y < 400) {
            sprite_index = sprPerseveranceMap1;
            xyou = 21;
            yyou = 118;
        } else {
            sprite_index = sprPerseveranceMap2;
            xyou = 135;
            yyou = -2;
        }
        break;
    case rmStorage2:
        sprite_index = sprPerseveranceMap2;
        xyou = 58;
        yyou = 95;
        break;
    case rmEscapePods:
        sprite_index = sprPerseveranceMap2;
        xyou = 268;
        yyou = 97;
        break;
    case rmVenus1:
        sprite_index = sprVenusMap1;
        xyou = 207;
        yyou = 65;
        break;
    case rmVenus2:
        sprite_index = sprVenusMap1;
        xyou = 143;
        yyou = 65;
        break;
    case rmVenus3:
        sprite_index = sprVenusMap1;
        xyou = 80;
        yyou = 66;
        break;
    case rmVenus4:
        sprite_index = sprVenusMap1;
        xyou = 279;
        yyou = 64;
        break;
    case rmVenus5:
        sprite_index = sprVenusMap1;
        xyou = 345;
        yyou = 65;
        break;
    case rmVenusTown1:
        sprite_index = sprVenusMap1;
        xyou = 16;
        yyou = 67;
        break;
    case rmVenusTown2:
        sprite_index = sprVenusMap1;
        xyou = 28;
        yyou = 140;
        break;
    case rmVenusPrison1:
        sprite_index = sprVenusMap1;
        xyou = 376;
        yyou = 1;
        break;
    case rmVenusPalace1:
        sprite_index = sprVenusMap1;
        xyou = 268;
        yyou = 97;
        break;
    default:
        event_user(0);
        exit;
}

xyou += floor(objPlayer.x / 10);
yyou += floor(objPlayer.y / 10);

//Placing X marks
if (is_string(get_flag(22)) && is_string(get_flag(23))) {
    marks_x = string_split(get_flag(22), ",");
    marks_y = string_split(get_flag(23), ",");
    for (var i = 0; i < ds_list_size(marks_x); i++) {
        mark_x[i] = real(ds_list_find_value(marks_x,i));
    }
    for (var j = 0; j < ds_list_size(marks_y); j++) {
        mark_y[j] = real(ds_list_find_value(marks_y,j));
    }
    ds_list_destroy(marks_x);
    ds_list_destroy(marks_y);
}

alarm[0] = 1;

