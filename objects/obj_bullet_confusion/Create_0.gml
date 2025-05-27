event_inherited();

bullet_hit_ability = function(hit) {
    hit.destination = obj_enemy_parent
    hit.passthrough = true
    hit.alarm[6] = 120
}