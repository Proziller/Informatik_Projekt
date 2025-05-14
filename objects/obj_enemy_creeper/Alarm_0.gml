if sprite_index != spr_explosion && instance_exists(obj_player){
    sped = 5 * power(0.99, distance_to_object(obj_player))
    image_speed = sped * 2
    
    path_delete(path)
    path = path_add()
    
    mp_grid_path(obj_grid_setup.grid, path, x, y, obj_player.x, obj_player.y, 1)
    path_start(path,sped,path_action_stop,1)
}
alarm[0] = 60