/// @description item_exists_at_storage_slot(slot)
/// @param slot
function item_exists_at_storage_slot(argument0) {
	return !is_undefined(ds_list_find_value(global.storage,argument0))



}
