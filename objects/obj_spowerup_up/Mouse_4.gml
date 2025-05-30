if pwerup == "health"{
    Splayer_health()
}
else {
    array_push(global.spowerups_active, pwerup)
}
instance_destroy()
instance_destroy(obj_spowerup_down)