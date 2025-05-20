if new_game{
    instance_destroy(obj_player.gun)
    obj_player.gun = instance_create_depth(x,y,depth-1,loudout_objects[selected_gun][0])
    obj_player.gun.bullet = loudout_objects[selected_gun][1]
    new_game = false
    
    obj_loadout_1.sprite_index = loudout_sprites[0]
    obj_loadout_2.sprite_index = loudout_sprites[1]
    obj_loadout_3.sprite_index = loudout_sprites[2]
}
switch (selected_gun) {
	case 0:
        sprite_index = spr_layout_select_1
    break
    
    case 1:
        sprite_index = spr_layout_select_2
    break
    
    case 2:
        sprite_index = spr_layout_select_3
    break
}