if !obj_player.dead && cooldown == 0 {
    cooldown = 1
    var created_bullet = instance_create_depth(x, y, -9, bullet)
    
    with created_bullet{
        dmg *= 0.8
        direction += random_range(-60, 60)
        speed = 7.5
        image_angle = direction
        alarm[0] = 22
        hitter = obj_enemy_parent
    }
    alarm[0] = 2
}