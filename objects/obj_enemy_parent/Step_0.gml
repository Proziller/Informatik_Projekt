if hp < 1 && !dying{
    sprite_index = spr_explosion
    dying = true
}

if stunned or obj_player.dead{
    path_end()
}

if obj_vars.enemies_alive < 2{
    passthrough = false
    destination = obj_player
}