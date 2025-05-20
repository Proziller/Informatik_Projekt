event_inherited();
if !obj_player.dead{
    with (gun) {
    	direction = point_direction(x,y,obj_player.x,obj_player.y)
    }
}
gun.x = x
gun.y = y