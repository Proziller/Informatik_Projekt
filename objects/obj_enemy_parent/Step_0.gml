if hp < 1 && !dying{
    sprite_index = spr_explosion
    audio_play_sound(snd_explosion, 1, false)
    dying = true
}