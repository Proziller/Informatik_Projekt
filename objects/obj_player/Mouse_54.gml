if !dash_cooldown && room != rm_home{
    direction = point_direction(x,y,mouse_x,mouse_y)
    speed_original *= 4
    alarm[0] = 10
    audio_play_sound(snd_dash_swosh, 1, false)
}