if !obj_player.dead && cooldown == 0{
    audio_play_sound(snd_gun_shotgun, 1, false)
    for (var i = 0; i < 24; i++) {
        var created_bullet = instance_create_depth(x, y, -9, bullet)
        
        with created_bullet{
            hitter = obj_enemy_parent
            speed = 5
            direction = point_direction(x,y, mouse_x, mouse_y) + (i*20)
            image_angle = direction
            if i == 0 {
                alarm[0] = 25
                image_xscale = 1.5
                image_yscale = 1.5
                speed = 10
                dmg *= 2
            }
            else {
                alarm[0] = 15
            }
        }
    }
    cooldown = 1
    alarm[0] = 20
}