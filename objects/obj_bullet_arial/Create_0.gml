event_inherited()

bullet_hit_ability = function(targetHit) {
    
    //creating a list
    list = ds_list_create()
    ds_list_clear(list)
    
    //listing all targets of the bullet in a circle in the list by distance and storing the ammount in num
    var num = collision_circle_list(x, y, 15 * image_xscale, bulletTarget, false, false, list, true)
    //if the list has content, move toword the closest target
    for (var i = 0; i < num; i++) { 
        list[| i].hp -= dmg
    }

    
    ds_list_destroy(list)
}