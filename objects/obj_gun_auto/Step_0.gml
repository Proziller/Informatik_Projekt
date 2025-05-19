if cooldown > 0{
cooldown -= 1
}

if mouse_check_button(mb_left) && cooldown == 0 {
    cooldown = 7
    var created_bullet = instance_create_depth(x, y, -9, bullet)
    
    with created_bullet{
        direction += spread(4)
        speed = 10 
        image_angle = direction
        alarm[0] = 30
        hitter = obj_enemy_parent
    }
}