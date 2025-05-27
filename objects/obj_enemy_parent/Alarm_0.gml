if !stunned && sprite_index != spr_explosion{
    if freezing{
        sped /= 2
    }
    image_speed = sped * 2
    
    if path_exists(path){
        path_delete(path)
    }
    path = path_add()
    
    var list = ds_list_create();
    ds_list_clear(list);
    var num = collision_circle_list(x, y, 10000, destination, false, true, list, true);
    destination = list[| 0]
    if num > 0{
        mp_grid_path(obj_grid_setup.grid, path, x, y, destination.x, destination.y, 1)
        path_start(path,sped,path_action_stop,1)
    }
    
    alarm[0] = 30
}