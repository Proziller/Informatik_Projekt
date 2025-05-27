if !obj_player.dead && cooldown == 0 && pressed && room != rm_home && room != rm_traider {
    
    shoot(count, damage, dgr_offset, selected, bullet_spread, sped, dist, size, constant_spread, reloud)
}