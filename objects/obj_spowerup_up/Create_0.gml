//choosing a random singel powerup and making the sprite match
pwerup = global.spowerups[irandom(array_length(global.spowerups)-1)]
switch pwerup {
    case "bulletdamage": 
        sprite_index = spr_spowerup_bullet_damage
    break
    
    case "bulletdistance":
        sprite_index = spr_spowerup_bullet_distance
    break
    
    case "bulletspread":
        sprite_index = spr_spowerup_bulletSpread
    break
    
    case "bulletsize":
        sprite_index = spr_spowerup_bullet_size
    break
    
    case "playerhealth":
        sprite_index = spr_spowerup_player_health
    break
    
    case "playerspeed": 
        sprite_index = spr_spowerup_player_speed
    break
}