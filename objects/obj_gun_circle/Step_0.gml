if instance_exists(obj_player){
    //shoot and play the sound, when the player isn't dead, the cooldown isn't active, the bullet is activated
    if !cooldown && pressed && room != rm_home && room != rm_traider {
        
        audio_play_sound(snd_gun_circle, 1, false)
        shoot(blletCount, bulletDamage, bulletDgrOffset, selected, bulletSpread, bulletSpeed, bulletDist, bulletSize, gunReload, bullet, self, 1, 3, 0.5)
    }
}