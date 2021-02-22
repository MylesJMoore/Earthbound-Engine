if instance_exists(objBattleMsg) or instance_exists(objCustomDamage){
    alarm[11] = 1
} else {
    if removeitem {
        del_item_inv(global.itemtouse[global._pl],global._pl-1)
    }
    with objTurnMaster { event_perform(ev_other,ev_user0) }
    instance_destroy()
}

