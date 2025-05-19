if distance_to_object(obj_player) < 300 && cooldown == 0 {
    cooldown = 1
    
    with instance_create_depth(x, y, -9, bullet){
        var pl = obj_player
        direction = point_direction(x,y, pl.x, pl.y) + spread(4)
        speed = 10 
        image_angle = direction
    }
    alarm[0] = 20
}