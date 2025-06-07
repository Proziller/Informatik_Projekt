enemySpeed = 1
activeTime = true

//go to destination when over the enemyStandDistance or there isn't a clear line to the destination
if collision_line(x, y, destination.x, destination.y, obj_blockade, true, false) != noone or distance_to_object(destination) > gun.enemyStandDistance{
    event_inherited()
}
//make it loop
alarm[0] = 30