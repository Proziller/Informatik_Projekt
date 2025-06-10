gun = global.loadout[index][0]
bullet = global.loadout[index][1]
sprite_index = object_get_sprite(gun)

var gui_mouse_x = device_mouse_x_to_gui(0)
var gui_mouse_y = device_mouse_y_to_gui(0)

if !being_dragged and position_meeting(gui_mouse_x, gui_mouse_y, id){ 
    if mouse_check_button_pressed(mb_left){ 
        being_dragged = true
    }
}

if being_dragged{ 
    x = gui_mouse_x
    y = gui_mouse_y
    
    if !mouse_check_button(mb_left){ 
        being_dragged = false
        var invSlot = instance_position(x/2, y/2, [obj_inv_gun_slot_1, obj_inv_gun_slot_2, obj_inv_gun_slot_3, obj_inv_gun_slot_4])
        
        if invSlot != noone{
            
            switch invSlot.object_index{
                
                case obj_inv_gun_slot_1:
                    var sgun = global.inv[0][0]
                    var sbullet = global.inv[0][1]
                    
                    global.inv[0][0] = gun
                    global.inv[0][1] = bullet
                
                    global.loadout[index][0] = sgun
                    global.loadout[index][1] = sbullet
                    
                    if sgun != ""{
                        gun = sgun
                        bullet = sbullet
                    }
                break
                
                case obj_inv_gun_slot_2:
                    var sgun = global.inv[1][0]
                    var sbullet = global.inv[1][1]
                    
                    global.inv[1][0] = gun
                    global.inv[1][1] = bullet
                
                    global.loadout[index][0] = sgun
                    global.loadout[index][1] = sbullet
                    
                    if sgun != ""{
                        gun = sgun
                        bullet = sbullet
                    }
                break
                
                case obj_inv_gun_slot_3:
                    var sgun = global.inv[2][0]
                    var sbullet = global.inv[2][1]
                    
                    global.inv[2][0] = gun
                    global.inv[2][1] = bullet
                
                    global.loadout[index][0] = sgun
                    global.loadout[index][1] = sbullet
                    
                    if sgun != ""{
                        gun = sgun
                        bullet = sbullet
                    }
                break
                
                case obj_inv_gun_slot_4:
                    var sgun = global.inv[3][0]
                    var sbullet = global.inv[3][1]
                    
                    global.inv[3][0] = gun
                    global.inv[3][1] = bullet
                
                    global.loadout[index][0] = sgun
                    global.loadout[index][1] = sbullet
                    
                    if sgun != ""{
                        gun = sgun
                        bullet = sbullet
                    }
                break
            }
        }
        x = orgX
        y = orgY
    }
}