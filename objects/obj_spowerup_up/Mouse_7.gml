//pushing the powerup into global.spowerupsActive
array_push(global.spowerupsActive, pwerup)

//destroying the powerups
instance_destroy(obj_spowerup_down)
instance_destroy(obj_spowerup_up)