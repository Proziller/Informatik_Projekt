if instance_exists(obj_player){
    //when not stunned and not dying
    if !stunned && sprite_index != spr_explosion{
         
        //halfing the speed when freezing
        if freezing{
            enemySpeed /= 2
        }
        else {
            enemySpeed = enemySpeedOriginal
        }
        
        //deleting a path if one exists
        if path_exists(path){
            path_delete(path)
        }
        //adding a path
        path = path_add()
        
        //setting the destination to the closest instace
        var list = ds_list_create()
        ds_list_clear(list)
        var num = collision_circle_list(x, y, 10000, destination, false, true, list, true)
        var dest = list[| 0]
        
        //when there is an istance of the destination
        if num > 0{
            mp_grid_path(obj_grid_setup.grid, path, x, y, dest.x, dest.y, 1)
            path_start(path,enemySpeed,path_action_stop,1)
        }
        
        //making it loop
        alarm[0] = 30
    }
}