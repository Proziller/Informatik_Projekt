//making the gun and bullet match
gun = global.loadout[index][0]
bullet = global.loadout[index][1]
sprite_index = object_get_sprite(gun)


//getting the x and y for the mouse on the window
var gui_mouse_x = device_mouse_x_to_gui(0)
var gui_mouse_y = device_mouse_y_to_gui(0)


//making the tooltip show the right thing
if position_meeting(gui_mouse_x, gui_mouse_y, id){
    
    var ret = return_gun_and_bullet(gun, bullet)
    
    if gun != obj_gun_placeholder && ret != [[""],[""]]{
        global.hover = ret
    }
}

//making a drag script for an UI element
if !being_dragged and position_meeting(gui_mouse_x, gui_mouse_y, id){ 
    if mouse_check_button_pressed(mb_left){ 
        being_dragged = true
    }
}

if being_dragged{ 
    x = gui_mouse_x
    y = gui_mouse_y
    
    if !mouse_check_button(mb_left){ 
        //swap information with a inv slot
        being_dragged = false
        var invSlot = instance_position(x/2, y/2, [obj_inv_gun_slot_1, obj_inv_gun_slot_2, obj_inv_gun_slot_3, obj_inv_gun_slot_4])
        
        if invSlot != noone{
            
            switch invSlot.object_index{
                
                case obj_inv_gun_slot_1:
                    swap_slot(0)
                break
                
                case obj_inv_gun_slot_2:
                    swap_slot(1)
                break
                
                case obj_inv_gun_slot_3:
                    swap_slot(2)
                break
                
                case obj_inv_gun_slot_4:
                    swap_slot(3)
                break
            }
        }
        else {
            x = orgX
            y = orgY
        }
    }
}
else {
    x = orgX
    y = orgY
}