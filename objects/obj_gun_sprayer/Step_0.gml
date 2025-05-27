if !obj_player.dead && cooldown == 0 && pressed && room != rm_home && room != rm_traider {
    cooldown = 1
    var created_bullet = instance_create_depth(x, y, -9, bullet)
    
    if selected {
        with created_bullet{
            hitter = obj_enemy_parent
            direction = point_direction(x, y, mouse_x, mouse_y)
        }
    }
    with created_bullet{
        dmg *= 0.4
        direction += random_range(-60, 60)
        speed = 7.5
        image_angle = direction
        image_xscale = 0.75
        image_yscale = 0.75
        alarm[0] = 22
    }
    alarm[0] = 1
}