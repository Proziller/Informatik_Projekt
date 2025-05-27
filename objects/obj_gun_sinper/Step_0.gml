if !obj_player.dead && cooldown = 0 && pressed && room != rm_home && room != rm_traider {
    
    var created_bullet = instance_create_depth(x, y, -9, bullet)
    
    audio_play_sound(snd_gun_sniper, 1, false)
    if selected {
        with created_bullet{
            hitter = obj_enemy_parent
            direction = point_direction(x, y, mouse_x, mouse_y)
        }
    }
    with created_bullet{
        speed = 10 
        image_angle = direction
        dmg *= 4
    }
    cooldown = 1
    alarm[0] = 120
}