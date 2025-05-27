event_inherited();
if !obj_player.dead{
    if distance_to_object(destination)<20 && !exploded{
        sprite_index = spr_explosion
            var list = ds_list_create();
            ds_list_clear(list);
            collision_circle_list(x, y, 10000, destination, false, true, list, true);
            list[| 0].hp -= 20
        exploded = true
    }
}
image_speed = 1