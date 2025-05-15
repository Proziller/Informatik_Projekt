// Inherit the parent event
event_inherited();

bulletAbility = function(targetHit) {
    list = ds_list_create();
    sprite_index = Sprite17
    speed = 0
    ds_list_clear(list);
    var num = instance_place_list(x, y, obj_enemy_parent, list, false);
    for (var i = 0; i < num; i++) {
        list[| i].hp -= dmg;
        show_debug_message(list[| i])
        show_debug_message(list[| i].hp)
    }
    ds_list_destroy(list);
}