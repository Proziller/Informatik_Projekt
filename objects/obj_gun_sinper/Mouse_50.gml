if !obj_player.dead && cooldown = 0{
    audio_play_sound(snd_gun_sniper, 1, false)
    with instance_create_depth(x, y, -9, bullet){
        speed = 10
        image_angle = direction
        dmg *= 4
        hitter = obj_enemy_parent
    }
    cooldown = 1
    alarm[0] = 180
}