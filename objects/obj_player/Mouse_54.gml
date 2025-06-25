//dash by incresing the speed
if !dashCooldown && room != rm_home{
    direction = point_direction(x,y,mouse_x,mouse_y)
    dash = true
    speedOriginal *= 4
    alarm[0] = 7
    hp -= 1
    dashHp += 1
    audio_play_sound(snd_dash_swosh, 1, false)
}