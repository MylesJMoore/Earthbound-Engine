/// @description del_item:inv(slot,inventory)
/// @param slot
/// @param inventory
function del_item_inv(argument0, argument1) {
	ds_list_delete(global.inv[argument1],argument0)



}
