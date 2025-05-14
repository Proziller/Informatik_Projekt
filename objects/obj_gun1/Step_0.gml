if selected{
    if cooldown > 0{
        cooldown -= 1
    }
    
    if mouse_check_button(mb_left) && cooldown == 0 {
        cooldown = 7
        var created_bullet = instance_create_depth(x, y, -9, bullet)
        with created_bullet{
            var spread = random_range(distance_to_object(obj_player)*-1, distance_to_object(obj_player)) * 7
            move_towards_point(mouse_x + spread, mouse_y + spread, 5)
            var _dir = point_direction(x, y, mouse_x, mouse_y);
            var _diff = angle_difference(_dir, image_angle);
            image_angle = _diff - 90
            dmg = 1.5
        }
    }
}