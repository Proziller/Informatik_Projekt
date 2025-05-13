if distance_to_object(obj_player)<20 && !exploded{
    sprite_index = spr_explosion
    obj_player.hp -= 2
    exploded = true
}
if hp < 1{
    sprite_index = spr_explosion
}