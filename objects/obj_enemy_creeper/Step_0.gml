event_inherited()

if instance_exists(obj_player){
    //explode when the destination is close
    if distance_to_object(destination) < 20 && !exploded{
        
        //do damage to all instances that are destination in a 40 radius
        var list = ds_list_create()
        ds_list_clear(list)
        var num = collision_circle_list(x, y, 40, destination, false, true, list, true)
        for (var i = 0; i < num; i++) {
            list[| i].hp -= 10
        }
        
        //setting up exploding
        exploded = true
        sprite_index = spr_explosion
        image_speed = 1
        
        change_cam_shake(2, 10, 0.1)
        alarm[8] = 1
    }
}