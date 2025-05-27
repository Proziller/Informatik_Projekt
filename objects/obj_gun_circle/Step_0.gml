if !obj_player.dead && cooldown == 0 && pressed && room != rm_home && room != rm_traider {
    audio_play_sound(snd_gun_shotgun, 1, false)
    for (var i = 0; i < 36; i++) {
        
        var created_bullet = instance_create_depth(x, y, -9, bullet)
        
        if selected {
            with created_bullet{
                hitter = obj_enemy_parent
                direction = point_direction(x, y, mouse_x, mouse_y)
            }
        }
        with created_bullet{
            dmg *= 0.8
            speed = 5
            direction += (i*10) + spread(5)
            image_angle = direction
            alarm[0] = 30
        }
    }
    cooldown = 1
    alarm[0] = 90
}