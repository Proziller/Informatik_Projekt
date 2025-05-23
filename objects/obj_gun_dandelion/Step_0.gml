if !obj_player.dead && cooldown == 0 && pressed && room != rm_home && room != rm_traider {
    for (var i = 0; i < 10; i++) {
        
        var created_bullet = instance_create_depth(x, y, -9, bullet)
        
        if selected {
            with created_bullet{
                hitter = obj_enemy_parent
                direction = point_direction(x, y, mouse_x, mouse_y) + (i*8)-40
            }
        }
        with created_bullet{
            bullet_constant_gun_ability = function() {
                direction += spread(10)
            }
            speed = 3
            direction += (i*8)-40
            image_angle = direction
            alarm[0] = 60
        }
    }
    cooldown = 1
    alarm[0] = 90
}