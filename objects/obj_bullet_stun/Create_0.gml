event_inherited();

bullet_hit_ability = function(target_hit) {
    if target_hit.alarm[7] < 1{
        target_hit.stunned = true
        target_hit.alarm[4] = 90
        target_hit.alarm[7] = 180
    }
}