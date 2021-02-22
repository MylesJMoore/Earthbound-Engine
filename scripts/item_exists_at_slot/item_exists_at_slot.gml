/// @description item_exists_at_slot(inventory,slot)
/// @param inventory
/// @param slot
function item_exists_at_slot(argument0, argument1) {
	return !is_undefined(ds_list_find_value(global.inv[argument0],argument1))



}
