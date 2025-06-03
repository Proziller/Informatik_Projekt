// Inherit the parent event
event_inherited()

bullet_hit_ability = function(target_hit){
    //making the target 1.5 times bigger
    target_hit.image_xscale = 1.5
    target_hit.image_yscale = 1.5
    target_hit.alarm[5] = 120
}