if pwerup == "health"{
    Splayer_health()
}
else {
    array_push(global.spowerups_active, pwerup)
}
instance_destroy(obj_spowerup_down)
instance_destroy(obj_spowerup_up)