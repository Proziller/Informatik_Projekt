switch_gun(global.selectedGun)

//when there are displays for the guns in the room, make them match the loadout by creating the guns, getting their sprite and destroying them again
if instance_exists(obj_loadout_1) && instance_exists(obj_loadout_2) && instance_exists(obj_loadout_3) && instance_exists(obj_loadout_bullet_3) && instance_exists(obj_loadout_bullet_2) && instance_exists(obj_loadout_bullet_1){
    
    var gun0 = instance_create_depth(-100,-100,depth-1,global.loadout[0][0])
    var bullet0 = instance_create_depth(-100,-100,depth-1,global.loadout[0][1])
    
    obj_loadout_1.sprite_index = global.loadout[0][0].sprite_index
    obj_loadout_bullet_1.sprite_index = global.loadout[0][1].sprite_index
    
    instance_destroy(gun0)
    instance_destroy(bullet0)
    
    
    var gun1 = instance_create_depth(-100,-100,depth-1,global.loadout[1][0])
    var bullet1 = instance_create_depth(-100,-100,depth-1,global.loadout[1][1])
    
    obj_loadout_2.sprite_index = global.loadout[1][0].sprite_index
    obj_loadout_bullet_2.sprite_index = global.loadout[1][1].sprite_index
    
    instance_destroy(gun0)
    instance_destroy(bullet1)
    
    
    var gun2 = instance_create_depth(-100,-100,depth-1,global.loadout[2][0])
    var bullet2 = instance_create_depth(-100,-100,depth-1,global.loadout[2][1])
    
    instance_create_depth(-100,-100,depth-1,global.loadout[2][0])
    instance_create_depth(-100,-100,depth-1,global.loadout[2][1])
    
    obj_loadout_3.sprite_index = global.loadout[2][0].sprite_index
    obj_loadout_bullet_3.sprite_index = global.loadout[2][1].sprite_index
    instance_destroy(gun2)
    instance_destroy(bullet2)
}