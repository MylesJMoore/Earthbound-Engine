/// @description add_item(item,inventory)
/// @param item
/// @param inventory
function add_item(argument0, argument1) {
	//returns -1 if there's no space left

	if item_exists_at_slot(argument1,19) {
	    write_line("No space left.")
	    return -1
	} else {
	    ds_list_add(global.inv[argument1],argument0)
	    write_line("Item added.")
	    return 0
	}



}
