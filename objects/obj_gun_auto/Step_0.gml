if !obj_player.dead && cooldown == 0 && pressed && room != rm_home && room != rm_traider {
    cooldown = 1
    
    var created_bullet = instance_create_depth(x, y, -9, bullet)
    
    if selected {
        with created_bullet {
            hitter = obj_enemy_parent
            direction = point_direction(x, y, mouse_x, mouse_y) + spread(6)
        }
    }
    with created_bullet {
        dmg *= 0.5
        direction += spread(6)
        speed = 10 
        image_angle = direction
        alarm[0] = 30
    }
    alarm[0] = 7
}