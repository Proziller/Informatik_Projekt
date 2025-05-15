if mouse_check_button_pressed(mb_left) && !pressed {
    for (var i = 0; i < 6; i++) {
        var created_bullet = instance_create_depth(x, y, -9, bullet)
        
        with created_bullet{
            speed = 5
            direction += (i*0.5)-1.5 + spread(5)
            image_angle = direction
            alarm[0] = 30
        }
    }
    pressed = true
}
if mouse_check_button_released(mb_left){
    pressed = false
}