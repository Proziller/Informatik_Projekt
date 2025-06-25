//choosing a random singel powerup and making the sprite match
pwerup = global.spowerups[irandom(array_length(global.spowerups)-1)]
switch pwerup {
    case "bullet damage": 
        sprite_index = spr_powerup_bullet_damage
    break
    
    case "bullet distance":
        sprite_index = spr_powerup_bullet_distance
    break
    
    case "gun spread":
        sprite_index = spr_powerup_bullet_spread
    break
    
    case "bullet size":
        sprite_index = spr_powerup_bullet_size
    break
    
    case "player speed": 
        sprite_index = spr_powerup_player_speed
    break
    
    case "gun reload": 
        sprite_index = spr_powerup_bullet_reload
    break
    
    case "bullet speed": 
        sprite_index = spr_powerup_bullet_speed
    break
}