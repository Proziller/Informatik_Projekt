if peng_peng > 0{
    audio_play_sound(snd_gun_auto, 1, false)
    shoot(count, damage, dgr_offset, selected, bullet_spread, sped, dist, size, reloud, bullet, self)
    peng_peng -= 1
}
else {
	alarm[1] = 15
}