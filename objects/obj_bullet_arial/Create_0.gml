// Inherit the parent event
event_inherited();

bullet_hit_ability = function(targetHit) {
    
    sprite_index = spr_bullet_arial_explosion
    speed = 0
    
    list = ds_list_create();
    ds_list_clear(list);
    var num = instance_place_list(x, y, obj_enemy_parent, list, false);
    
    for (var i = 0; i < num; i++) {
        list[| i].hp -= dmg;
    }
    
    ds_list_destroy(list);
}