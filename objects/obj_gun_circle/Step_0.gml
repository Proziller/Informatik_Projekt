if !obj_player.dead && !cooldown && pressed && room != rm_home && room != rm_traider {
    
    audio_play_sound(snd_gun_circle, 1, false)
    shoot(blletCount, bulletDamage, bulletDgrOffset, selected, bulletSpread, bulletSpeed, bulletDist, bulletSize, gunReload, bullet, self)
}