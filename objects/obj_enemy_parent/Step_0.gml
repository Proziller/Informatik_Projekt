if hp < 1 && !dying{
    sprite_index = spr_explosion
    audio_play_sound(snd_explosion, 1, false)
    dying = true
}
if stunned or !instance_exists(obj_player){
    path_end()
}