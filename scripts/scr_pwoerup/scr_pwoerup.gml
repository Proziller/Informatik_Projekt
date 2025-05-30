function choose_powerup (instance){
    var pwerup = global.spowerups[irandom(array_length(global.spowerups)-1)]
    switch pwerup {
        case "damage": 
            instance.sprite_index = spr_spowerup_damage
        break
        
        case "distance":
            instance.sprite_index = spr_spowerup_distance
        break
        
        case "health":
            instance.sprite_index = spr_spowerup_health
        break
        
        case "size":
            instance.sprite_index = spr_spowerup_size
        break
        
        case "spread":
            instance.sprite_index = spr_spowerup_spread
        break
    }
    return pwerup
}