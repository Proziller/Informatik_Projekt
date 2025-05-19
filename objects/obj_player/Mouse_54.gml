if !dash_cooldown{
    direction = point_direction(x,y,mouse_x,mouse_y)
    speed = 15
    alarm[0] = 5
    audio_play_sound(snd_dash_swosh, 1, false)
}