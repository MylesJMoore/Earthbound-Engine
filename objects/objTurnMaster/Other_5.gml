/// @description Destroy turn list
if instance_exists(objBattleController) {
    if ds_exists(turn_order,ds_type_priority) {
        ds_priority_destroy(turn_order) 
    }
}

