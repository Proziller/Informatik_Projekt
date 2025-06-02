if !obj_player.dead && !cooldown && pressed && room != rm_home && room != rm_traider {
    
    audio_play_sound(snd_gun_parrable, 1, false)
    shoot(blletCount, bulletDamage, bulletDgrOffset, selected, bulletSpread, bulletSpeed, bulletDist, bulletSize, gunReload, bullet, self)
    shoot(1, 1.5, 0, selected, 0, 10, 20, 1.5, gunReload, bullet, self)
}