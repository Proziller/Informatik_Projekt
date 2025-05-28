event_inherited();
if shoot{
    gun.hitter = destination
    gun.x = x
    gun.y = y
    
    if passthrough {
        gun.selected = true
    }
    else {
        gun.selected = false
    }
    
    if distance_to_object(destination) > gun.distance * 0.75 or stunned{
    	gun.pressed = false
    }
    else  {
        if path_exists(path) {
        	path_delete(path)
        }
    }
    if distance_to_object(destination) < gun.distance{
        gun.pressed = true
    }
}