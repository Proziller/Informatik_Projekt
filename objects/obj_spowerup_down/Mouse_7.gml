if pwerup == "health"{
    obj_player.hp += 10
}
else {
    array_push(global.spowerups_active, pwerup)
}
instance_destroy(obj_spowerup_down)
instance_destroy(obj_spowerup_up)