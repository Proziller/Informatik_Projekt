event_inherited()

bullet_hit_ability = function(hit) {
    
    if object_is_ancestor(hit.object_index, obj_enemy_parent) && hit.object_index != obj_boss{
        //setting the hits destination to be enemies
        hit.destination = obj_enemy_parent
        
        //activatin the hits passthrough for 120 steps
        hit.passthrough = true
        hit.alarm[6] = 120
    }
}