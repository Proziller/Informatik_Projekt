if instance_exists(obj_player){
    //activating alarm1 and cooldown, when the player isn't dead, the cooldown isn't active, the bullet is activated
    if !cooldown && pressed && room != rm_home && room != rm_traider {
        alarm[1] = 1
        cooldown = true
    }
}