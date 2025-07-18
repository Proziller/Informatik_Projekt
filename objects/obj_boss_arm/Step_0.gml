//shooting matching to the arm
if !cooldown {
    switch arm {
    	case spr_boss_arm_spray:
            shoot(1, 1, 0, false, 6, 5, 132, 1, 10, obj_boss_bullet_spray, self, 0, 3, 0.25)
        break
        
        case spr_boss_arm_circle:
            shoot(36, 0.8, 10, false, 0, 2.5, 75, 1, 120, obj_boss_bullet_circle, self, 1, 3, 0.5)
        break
        
        case spr_boss_arm_wall_horizontal:
            
            //making it switch sides
            var wallSpeed = 4
            if wallSide != "left"{
                wallSide = "left"
                wallSpeed = -4
            }
            else {
            	wallSide = "right"
            }
            
            //placing wall fragments all accross the room
            var wallAmmount = room_height - 64 / 32
            for (var i = 0; i < wallAmmount; i++) {
            	var wall_fragment = instance_create_depth((-wallSpeed/4 +1)*304 + 16, i*32 , depth-1, obj_boss_attack_wall)
                with wall_fragment {
                	x_speed = wallSpeed
                }
            }
            
            //making it loop
            cooldown = true
            alarm[0] = 240
        break
        
        case spr_boss_arm_wall_vertical:
            
            //making it switch sides
            var wallSpeed = 4
            if wallSide != "down"{
                wallSide = "down"
                wallSpeed = -4
            }
            else {
            	wallSide = "up"
            }
            
            //placing wall fragments all accross the room
            var wallAmmount = room_width - 64 / 32
            for (var i = 0; i < wallAmmount; i++) {
            	var wall_fragment = instance_create_depth(i*32, (-wallSpeed/4 +1)*240 +  16, depth-1, obj_boss_attack_wall)
                with wall_fragment {
                	y_speed = wallSpeed
                    image_angle = 90
                }
            }
            
            //making it loop
            cooldown = true
            alarm[0] = 240
        break
        
        case spr_boss_arm_homing:
            shoot(1, 1, 0, false, 3, 10, 165, 1, 120, obj_boss_bullet_homing, self, 3, 4, 0.05)
        break
    }
}