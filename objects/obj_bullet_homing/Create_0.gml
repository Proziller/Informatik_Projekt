// Inherit the parent event
event_inherited();

bullet_constant_ability = function(targetHit) {
    
    list = ds_list_create();
    ds_list_clear(list);
    var num = collision_circle_list(x, y, 30, hitter, false, false, list, true);
    if num > 0{
        move_towards_point(list[| 0].x, list[| 0].y, speed)
    }
    
    ds_list_destroy(list);
}