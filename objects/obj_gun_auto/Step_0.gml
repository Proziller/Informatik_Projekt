if !obj_player.dead{
    if cooldown > 0{
    cooldown -= 1
    }
    
    if mouse_check_button(mb_left) && cooldown == 0 {
        audio_play_sound(snd_gun_auto, 1, false)
        cooldown = 7
        var created_bullet = instance_create_depth(x, y, -9, bullet)
        
        with created_bullet{
            dmg *= 0.5
            direction += spread(6)
            speed = 10 
            image_angle = direction
            alarm[0] = 30
            hitter = obj_enemy_parent
        }
    }
}