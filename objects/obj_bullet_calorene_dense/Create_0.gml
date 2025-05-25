// Inherit the parent event
event_inherited();

bullet_hit_ability = function(target_hit){
    target_hit.image_xscale = 2
    target_hit.image_yscale = 2
    if target_hit == obj_player{
        target_hit.body.image_xscale = 2
        target_hit.body.image_yscale = 2
    }
}