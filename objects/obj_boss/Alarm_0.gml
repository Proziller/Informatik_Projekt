if collision_line(x, y, obj_player.x, obj_player.y, obj_blockade, true, false) != noone or distance_to_object(obj_player) > 200{
    sped = leg.boss_speed
    event_inherited()
}
alarm[0]= 15