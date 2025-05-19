if distance_to_object(obj_player) < 100 && cooldown == 0{
    for (var i = 0; i < 6; i++) {
        var created_bullet = instance_create_depth(x, y, -9, bullet)
        
        with created_bullet{
            var pl = obj_player
            speed = 5
            direction = point_direction(x,y, pl.x, pl.y) + (i*8)-24 + spread(5)
            image_angle = direction
            alarm[0] = 30
        }
    }
    cooldown = 1
    alarm[0] = 20
}