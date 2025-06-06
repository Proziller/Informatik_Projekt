if hp < 1 && !dying{
    sprite_index = spr_explosion
    path_end()
    dying = true
}

if stunned or obj_player.dead{
    path_end()
}

if obj_vars.enemiesAlive < 2{
    passthrough = false
    destination = obj_player
}