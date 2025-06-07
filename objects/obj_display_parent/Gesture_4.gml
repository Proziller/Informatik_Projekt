//if the display, that is dragged, meets a loudout slot at the end of a drag
var pos = instance_position(x, y, [obj_hitbox_1, obj_hitbox_2, obj_hitbox_3])
if pos != noone{
    
    //switch for the loudout slots to take on the right sprite and the loudout to update to the right gun
    switch pos.object_index {
        
    	case obj_hitbox_1:
            obj_loadout_1.sprite_index = gun_spr
            obj_loadout_bullet_1.sprite_index = bullet_spr
            
            global.loadout[0][0] = gun_obj
            global.loadout[0][1] = bullet_obj
        break
        
        
    	case obj_hitbox_2:
            obj_loadout_2.sprite_index = gun_spr
            obj_loadout_bullet_2.sprite_index = bullet_spr
            
            global.loadout[1][0] = gun_obj
            global.loadout[1][1] = bullet_obj
        break
        
        
    	case obj_hitbox_3:
            obj_loadout_3.sprite_index = gun_spr
            obj_loadout_bullet_3.sprite_index = bullet_spr
            
            global.loadout[2][0] = gun_obj
            global.loadout[2][1] = bullet_obj
        break
    }
    
    //destroying all weapon choices
    instance_destroy(obj_gunDisplay_bullet_up)
    instance_destroy(obj_gunDisplay_bullet_down)
    instance_destroy(obj_gunDisplay_down)
    instance_destroy(obj_gunDisplay_up)
}

//else reverting to the original position 
else {
    x = org_x
    y = org_y 
}