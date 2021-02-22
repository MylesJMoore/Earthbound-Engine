if instance_exists(objBattleMsg) {
    alarm[10] = 1
} else {
    del_item_inv(global.itemtouse[global._pl],global._pl-1)
    with objTurnMaster { event_perform(ev_other,ev_user0) }
    instance_destroy()
}

