if ds_map_find_value(global.presents,pid) = 0 {
    image_index = 1
} else {
    image_index = 0
    item = ds_map_find_value(global.presents,pid)
}

