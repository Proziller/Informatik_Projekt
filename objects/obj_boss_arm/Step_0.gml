//shooting matching to the arm
if !cooldown {
    switch arm {
    	case spr_boss_arm_spray:
            shoot(1, 1, 0, false, 6, 5, 30, 1, 10, obj_boss_bullet_spray, self)
        break
        
        case spr_boss_arm_circle:
            shoot(36, 0.8, 10, false, 0, 2.5, 45, 1, 120, obj_boss_bullet_circle, self)
        break
        
        case spr_boss_arm_wall:
            
            //making it switch sides
            var wallSpeed = 4
            if wallSide == "right"{
                wallSide = "left"
                wallSpeed = -4
            }
            else {
            	wallSide = "right"
            }
            
            //placing wall fragments all accross the room
            var wallAmmount = room_width / 32
            for (var i = 0; i < wallAmmount; i++) {
            	var wall_fragment = instance_create_depth(wallAmmount, i*32, depth-1, obj_boss_attack_wall)
                with wall_fragment {
                	x_speed = wallSpeed
                }
            }
            
            //making it loop
            cooldown = true
            alarm[0] = 240
        break
        
        case spr_boss_arm_homing:
            shoot(1, 1, 0, false, 3, 10, 30, 1, 120, obj_boss_bullet_homing, self)
        break
    }
}