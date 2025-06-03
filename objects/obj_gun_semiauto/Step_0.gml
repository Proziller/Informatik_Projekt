//activating alarm1 and cooldown, when the player isn't dead, the cooldown isn't active, the bullet is activated
if !obj_player.dead && !cooldown && pressed && room != rm_home && room != rm_traider {
    alarm[1] = 1
    cooldown = true
}