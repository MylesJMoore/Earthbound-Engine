function end_inventory() {
	ds_list_destroy(global.inv[0])
	ds_list_destroy(global.inv[1])
	ds_list_destroy(global.inv[2])
	ds_list_destroy(global.inv[3])
	ds_list_destroy(global.inv[4])
	ds_list_destroy(global.inv_extra[0])
	ds_list_destroy(global.inv_extra[1])
	ds_list_destroy(global.inv_extra[2])
	ds_list_destroy(global.inv_extra[3])
	ds_list_destroy(global.inv_extra[4])
	ds_list_destroy(global.storage)
	ds_list_destroy(global.empty_list)



}
