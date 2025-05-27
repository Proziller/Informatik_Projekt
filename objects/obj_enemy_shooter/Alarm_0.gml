sped = 1
shoot = true
if distance_to_object(obj_player) > gun.distance {
    event_inherited();
}
alarm[0] = 30