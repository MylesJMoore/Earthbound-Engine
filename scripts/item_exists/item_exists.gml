/// @description item_exists(inventory,item)
/// @param inventory
/// @param item
function item_exists(argument0, argument1) {
	for (var i=0; i<20; i++)
	{
	    if ds_list_find_value(global.inv[argument0],i) = argument1 {
	        return 1;
	    }
	}

	return 0;



}
