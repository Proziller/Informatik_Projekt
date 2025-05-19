if !obj_player.dead{
    if cooldown = 0{
        cooldown = 1
        audio_play_sound(snd_gun_sniper, 1, false)
        
        with instance_create_depth(x, y, -9, bullet){
            var pl = obj_player
            direction = point_direction(x,y, pl.x, pl.y) + spread(1)
            speed = 10 
            image_angle = direction
            dmg *= 8
        }
        alarm[0] = 180
    }
}