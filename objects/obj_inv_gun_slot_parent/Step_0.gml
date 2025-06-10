sprite_index = object_get_sprite(global.inv[index][0])
visible = true

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
        
        var loudoutSlot = instance_position(x, y, [obj_hitbox_1, obj_hitbox_2, obj_hitbox_3])
        if loudoutSlot != noone{
            
            switch loudoutSlot.object_index {
            	
                case obj_hitbox_1:
                    var sgun = global.loadout[0][0]
                    var sbullet = global.loadout[0][1]
                    
                    global.loadout[0][0] = global.inv[index][0]
                    global.loadout[0][1] = global.inv[index][1]
                    
                    global.inv[index][0] = sgun
                    global.inv[index][1] = sbullet
                break
            	
                case obj_hitbox_2:
                    var sgun = global.loadout[1][0]
                    var sbullet = global.loadout[1][1]
                    
                    global.loadout[1][0] = global.inv[index][0]
                    global.loadout[1][1] = global.inv[index][1]
                    
                    global.inv[index][0] = sgun
                    global.inv[index][1] = sbullet
                break
            	
                case obj_hitbox_3:
                    var sgun = global.loadout[2][0]
                    var sbullet = global.loadout[2][1]
                    
                    global.loadout[2][0] = global.inv[index][0]
                    global.loadout[2][1] = global.inv[index][1]
                    
                    global.inv[index][0] = sgun
                    global.inv[index][1] = sbullet
                break
            }
        }
        x = orgX
        y = orgY
    }
}