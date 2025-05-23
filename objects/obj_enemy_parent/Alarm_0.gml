if !stunned && sprite_index != spr_explosion && instance_exists(destination){
    if freezing{
        sped /= 2
    }
    image_speed = sped * 2
    
    if path_exists(path){
        path_delete(path)
    }
    path = path_add()
    
    mp_grid_path(obj_grid_setup.grid, path, x, y, destination.x, destination.y, 1)
    path_start(path,sped,path_action_stop,1)
    
    alarm[0] = 30
}