if selected{
    if cooldown > 0{
        cooldown -= 1
    }
    
    if mouse_check_button(mb_left) && cooldown == 0 {
        cooldown = 7
        var created_bullet = instance_create_depth(x, y, -9, bullet)
        
        with created_bullet{
            sprite_index = spr_bullet1
            var spread = random_range(distance_to_object(obj_player)*-1, distance_to_object(obj_player)) * 2.5
            var _dir = point_direction(x, y, mouse_x, mouse_y);
            direction = _dir// + spread
            image_angle = direction + 90
            speed = 10
            dmg = 1.5
        }
    }
}