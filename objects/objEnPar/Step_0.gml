depth = -y
if image_speed = 0 { image_index = turned_around; }

if turned_around and !seen_back {
    seen_back = 1
}

if !turned_around and !seen_front {
    seen_front = 1
}

