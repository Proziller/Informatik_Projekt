//when the powerup is health, give the player + 19 hp
if pwerup == "health"{
    Splayer_health()
}

//else pushing the powerup into global.spowerupsActive
else {
    array_push(global.spowerupsActive, pwerup)
}

//destroying the powerups
instance_destroy(obj_spowerup_down)
instance_destroy(obj_spowerup_up)