if !obj_player.dead && cooldown == 0 && pressed && room != rm_home && room != rm_traider {
    
    audio_play_sound(snd_gun_auto, 1, false)
    shoot(count, damage, dgr_offset, selected, bullet_spread, sped, dist, size, constant_spread, reloud)
}