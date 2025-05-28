if !obj_player.dead && cooldown == 0 && pressed && room != rm_home && room != rm_traider {
    
    audio_play_sound(snd_gun_sniper, 1, false)
    shoot(count, damage, dgr_offset, selected, bullet_spread, sped, dist, size, reloud)
    shoot(1, 1.5, 0, selected, 0, 10, 25, 1.5, reloud)
}