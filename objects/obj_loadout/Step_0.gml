if new_game{
    instance_destroy(obj_player.gun)
    obj_player.gun = instance_create_depth(x,y,depth-1,obj_loadout.loudout[obj_loadout.selected_gun])
    new_game = false
}
sprite_index = loudout[selected_gun].sprite_index