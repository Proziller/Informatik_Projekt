event_inherited();

bullet_hit_ability = function(target_hit) {
    if !target_hit.stunned{
        target_hit.stunned = true
        target_hit.alarm[3] = 120
    }
}