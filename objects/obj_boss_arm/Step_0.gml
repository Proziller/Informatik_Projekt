if !cooldown {
    switch arm {
    	case spr_boss_arm_spray:
            shoot(1, 1, 0, false, 6, 10, 30, 1, 10, obj_boss_bullet_spray, self)
        break
        
        case spr_boss_arm_circle:
            shoot(36, 0.8, 10, false, 0, 5, 45, 1, 120, obj_boss_bullet_circle, self)
        break
        
        case spr_boss_arm_wall:
            var wall_speed = 4
            var wall_spawn = 0
            if wall_side == "right"{
                wall_side = "left"
                wall_speed = -4
                wall_spawn = room_width
            }
            else {
            	wall_side = "right"
            }
            for (var i = 0; i < room_height / 32; i++) {
            	var wall_fragment = instance_create_depth(wall_spawn, i*32, depth-1, obj_boss_attack_wall)
                with wall_fragment {
                	x_speed = wall_speed
                }
            }
            cooldown = true
            alarm[0] = 240
        break
        
        case spr_boss_arm_homing:
            shoot(1, 1, 0, false, 3, 10, 30, 1, 120, obj_boss_bullet_homing, self)
        break
    }
}