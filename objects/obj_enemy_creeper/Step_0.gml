event_inherited();
if !obj_player.dead{
    if distance_to_object(obj_player)<20 && !exploded{
        sprite_index = spr_explosion
        obj_player.hp -= 20
        exploded = true
        image_speed = 12
        audio_play_sound(snd_explosion, 1, false)
    }
}