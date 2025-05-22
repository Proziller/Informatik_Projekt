event_inherited();

bullet_hit_ability = function(target_hit) {
    target_hit.alarm[3] = 240
    target_hit.stunned = true
}