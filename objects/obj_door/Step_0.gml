if room == rm_arena{
    if obj_vars.enemiesAlive == 0{
        y = 32
    }
    else {
    	y = -32
    }
}
if room == rm_arena_boss {
    if !instance_exists(obj_boss){
        y = 32
    }
    else {
    	y = -32
    }
}