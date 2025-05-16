if mouse_check_button_pressed(mb_left) && cooldown = 0{
    cooldown = 1
    
    with instance_create_depth(x, y, -9, bullet){
        speed = 10 
        image_angle = direction
        dmg *= 8
    }
    alarm[0] = 180
}