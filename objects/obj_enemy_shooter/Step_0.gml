event_inherited();
if !obj_player.dead {
    with (gun) {
    	direction = point_direction(x,y,obj_player.x,obj_player.y)
    }
}
gun.hitter = obj_player
gun.x = x
gun.y = y
if distance_to_object(obj_player) > gun.distance && !stunned{
    gun.pressed = true
}
else  {
    if path_exists(path) {
    	path_delete(path)
    }
}