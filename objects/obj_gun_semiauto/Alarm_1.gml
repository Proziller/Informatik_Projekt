if instance_exists(obj_player){
    //iterate the shooting and play sound three times and then setting the cooldown to the double of the reloud
    if peng_peng > 0{
        audio_play_sound(snd_gun_semiauto,1,false)
        shoot(blletCount, bulletDamage, bulletDgrOffset, selected, bulletSpread, bulletSpeed, bulletDist, bulletSize, gunReload, bullet, self, 1, 1, 0.1)
        alarm[1] = (gunReload - 1)
        peng_peng -= 1
    }
    else {
    	alarm[0] = gunReload * 2
    }
}