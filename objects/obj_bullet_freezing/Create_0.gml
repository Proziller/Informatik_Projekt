event_inherited();

bullet_hit_ability = function(target_hit){
    target_hit.alarm[0] = 1
    target_hit.alarm[3] = 120
    target_hit.freezing = true
}