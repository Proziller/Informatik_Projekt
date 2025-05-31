event_inherited();

bullet_hit_ability = function(target_hit) {
    if !target_hit.stun_timer{
        target_hit.stunned = true
        target_hit.stun_timer = true
        target_hit.alarm[4] = 120
        target_hit.alarm[7] = 180
    }
}