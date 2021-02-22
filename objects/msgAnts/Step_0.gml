if distance_to_object(objPlayer) < 4 and active = 0 and objPlayer.water = 0{
    active = 1;
    objPlayer.canmove = 0;
    objPlayer.speed = 0;
    event_user(0);
}

if distance_to_object(objPlayer) > 32 {
    active = 0;
}

