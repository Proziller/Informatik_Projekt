if mouse_check_button(mb_left) && cooldown = 0{
    with instance_create_depth(x, y, -9, bullet){
        speed = 10 
        image_angle = direction
        dmg *= 8
        hitter = obj_enemy_parent
    }
    cooldown = 1
    alarm[0] = 180
}