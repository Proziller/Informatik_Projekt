if !obj_player.dead && cooldown == 0{
    audio_play_sound(snd_gun_shotgun, 1, false)
    for (var i = 0; i < 6; i++) {
        var created_bullet = instance_create_depth(x, y, -9, bullet)
        
        with created_bullet{
            hitter = obj_enemy_parent
            speed = 5
            direction = point_direction(x,y, mouse_x, mouse_y) + (i*8)-24 + spread(5)
            image_angle = direction
            alarm[0] = 60
        }
    }
    cooldown = 1
    alarm[0] = 20
}