event_inherited()

bullet_hit_ability = function(target_hit){
    //if the hit is an enemy resetting its pathfinding
    if object_is_ancestor(target_hit.object_index, obj_enemy_parent){
        target_hit.alarm[0] = 1
    }
    //activating freezing on the hit for 120 steps
    target_hit.freezing = true
    target_hit.alarm[3] = 120
}