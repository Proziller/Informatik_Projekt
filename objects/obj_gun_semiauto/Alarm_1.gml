if peng_peng > 0{
    audio_play_sound(snd_gun_semiauto,1,false)
    shoot(blletCount, bulletDamage, bulletDgrOffset, selected, bulletSpread, bulletSpeed, bulletDist, bulletSize, gunReload, bullet, self)
    alarm[1] = reloud - 1
    peng_peng -= 1
}
else {
	alarm[0] = 15
}