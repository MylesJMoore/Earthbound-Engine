/// @description show_shop(shop)
/// @param shop
function show_shop(argument0) {
	var shop_object;
	shop_object = instance_create(x,y,objShop)
	shop_object.object = object_index
	shop_object.shop_index = argument0
	objPlayer.canmove = 0



}
