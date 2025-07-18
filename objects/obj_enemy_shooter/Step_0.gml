event_inherited()
if instance_exists(obj_player) && instance_exists(gun){
    //only do stuff when not stunned and active
    if activeTime && !stunned{
        //teleport gun to self
        gun.x = x
        gun.y = y
        
        //when confused make the gun be like the one of the player and if not, not
        if confused {
            gun.selected = true
        }
        else {
            gun.selected = false
        }
        
        //shoot when close to the destination
        if distance_to_object(destination) < gun.enemyStandDistance * 1.25{
        	gun.pressed = true
        }
        else{
            gun.pressed = false
        }
        
        //stop when when under the enemyStandDistance
        if distance_to_object(destination) < gun.enemyStandDistance && collision_line(x, y, destination.x, destination.y, obj_blockade, true, false) == noone{
            if path_exists(path){
                path_delete(path)
                alarm[0] = 1
            }
        }
    }
    if stunned{
        gun.pressed = false
    }
    
    //rotate the gun to the destination
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
}

//destroy the gun when the instance is dead
if hp < 1{
    instance_destroy(gun)
}