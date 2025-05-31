pwerup = global.spowerups[irandom(array_length(global.spowerups)-1)]
switch pwerup {
    case "damage": 
        sprite_index = spr_spowerup_damage
    break
    
    case "distance":
        sprite_index = spr_spowerup_distance
    break
    
    case "health":
        sprite_index = spr_spowerup_health
    break
    
    case "bulletsize":
        sprite_index = spr_spowerup_size
    break
    
    case "spread":
        sprite_index = spr_spowerup_spread
    break
}