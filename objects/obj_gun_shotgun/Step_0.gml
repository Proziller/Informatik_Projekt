if !obj_player.dead{
    if mouse_check_button_pressed(mb_left) && !pressed{
        audio_play_sound(snd_gun_shotgun, 1, false)
        for (var i = 0; i < 6; i++) {
            var created_bullet = instance_create_depth(x, y, -9, bullet)
            
            with created_bullet{
                speed = 5
                direction += (i*8)-24 + spread(5)
                dmg = dmg * 0.8
                image_angle = direction
                alarm[0] = 30
                hitter = obj_enemy_parent
            }
        }
        pressed = true
    }
    if mouse_check_button_released(mb_left){
        pressed = false
    }
}