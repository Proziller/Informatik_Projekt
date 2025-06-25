if instance_exists(obj_player){
    //shoot and play the sound, when the player isn't dead, the cooldown isn't active, the bullet is activated
    if !cooldown && pressed && room != rm_home && room != rm_traider {
        
        audio_play_sound(snd_gun_parrable, 1, false)
        //creating a circular shooting pattern
        shoot(blletCount, bulletDamage, bulletDgrOffset, selected, bulletSpread, bulletSpeed, bulletDist, bulletSize, gunReload, bullet, self, 1, 3, 0.1)
        //creating a single bigger bullet, that flies longer and is bigger
        shoot(1, 1.5, 0, selected, 0, 10, 132, 1.5, gunReload, bullet, self, 0, 3, 0.1)
    }
}