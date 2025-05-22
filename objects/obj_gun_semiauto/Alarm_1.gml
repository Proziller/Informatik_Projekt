if peng_peng > 0{
    cooldown = 1
    
    var created_bullet = instance_create_depth(x, y, -9, bullet)
    
    if selected {
        with created_bullet{
            hitter = obj_enemy_parent
            direction = point_direction(x, y, mouse_x, mouse_y)
        }
    }
    with created_bullet{
        dmg *= 0.5
        direction += spread(3)
        speed = 10 
        image_angle = direction
        alarm[0] = 35
    }
    peng_peng -= 1
    alarm[1] = 7
}
else {
	alarm[0] = 15
}