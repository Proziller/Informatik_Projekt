if !obj_player.dead && cooldown == 0{
    for (var i = 0; i < 10; i++) {
        var created_bullet = instance_create_depth(x, y, -9, bullet)
        
        with created_bullet{
            bullet_constant_gun_ability = function() {
                direction += spread(15)
            }
            hitter = obj_enemy_parent
            speed = 3
            direction = point_direction(x,y, mouse_x, mouse_y) + (i*8)-40
            image_angle = direction
            alarm[0] = 60
        }
    }
    cooldown = 1
    alarm[0] = 90
}