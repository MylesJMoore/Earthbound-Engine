blink = 0
image_speed = 0
if global.battle_type == 1 {
    turned_around = 1
} else {
    turned_around = 0
}
can_turn_around = 1
seen_front       = !turned_around;
seen_back        = turned_around;
image_index = turned_around;

