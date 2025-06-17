//making the sprite match the inv slot
sprite_index = object_get_sprite(global.inv[index][0])
visible = true

//making a drag script
if !being_dragged and position_meeting(mouse_x, mouse_y, id){ 
    if mouse_check_button_pressed(mb_left){ 
        being_dragged = true
    }
}
if being_dragged{
    x = mouse_x
    y = mouse_y
    
    if !mouse_check_button(mb_left){ 
        being_dragged = false
        
        //swap info with slot
        var loudoutSlot = instance_position(x, y, [obj_hitbox_1, obj_hitbox_2, obj_hitbox_3])
        if loudoutSlot != noone{
            
            switch loudoutSlot.object_index {
            	
                case obj_hitbox_1:
                    swap_slot(0)
                break
            	
                case obj_hitbox_2:
                    swap_slot(1)
                break
            	
                case obj_hitbox_3:
                    swap_slot(2)
                break
            }
        }
        x = orgX
        y = orgY
    }
}