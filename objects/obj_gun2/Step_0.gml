if mouse_check_button_pressed(mb_left) && !pressed {
    for (var i = 0; i < 6; i++) {
        var created_bullet = instance_create_depth(x, y, -9, bullet)
        
        with created_bullet{
            sprite_index = spr_bullet2
            var spread = random_range(distance_to_object(obj_player)*-1, distance_to_object(obj_player)) * 5
            var _dir = point_direction(x, y, mouse_x, mouse_y);
            direction = _dir + (i*0.5)-1.5 + spread
            image_angle = direction
            speed = 10
            dmg = 2
            alarm_set(0,10)
        }
    }
    pressed = true
}
if mouse_check_button_released(mb_left){
    pressed = false
}