event_inherited();

bullet_hit_ability = function(target_hit){
    if object_is_ancestor(target_hit.object_index, obj_enemy_parent){
        target_hit.alarm[0] = 1
    }
    target_hit.alarm[3] = 120
    target_hit.freezing = true
}