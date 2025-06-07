event_inherited()

//destroy the gun when the instance is destroyed
if !obj_player.dead {
    instance_destroy(gun)
}