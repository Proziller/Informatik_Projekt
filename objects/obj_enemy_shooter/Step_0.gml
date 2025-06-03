event_inherited()
if shootin && !stunned{
    gun.x = x
    gun.y = y
    
    if passthrough {
        gun.selected = true
    }
    else {
        gun.selected = false
    }
    
    if distance_to_object(destination) > gun.enemyStandDistance * 0.75{
    	gun.pressed = false
    }
    else  {
        if path_exists(path) {
        	path_delete(path)
        }
    }
    if distance_to_object(destination) < gun.enemyStandDistance{
        gun.pressed = true
    }
}
var dest = destination
with gun {
    image_angle = point_direction(x, y, dest.x, dest.y)
    if image_angle < 90 or image_angle > 270{
        image_yscale = 1.5
    }
    else {
        image_yscale = -1.5
    }
    image_xscale = 1.5
}