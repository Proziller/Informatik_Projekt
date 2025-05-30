switch arm {
	case spr_boss_arm_spray:
        direction = point_direction(x,y,obj_player.x, obj_player.y)
        if !cooldown{
            var bullet = instance_create_depth(x, y ,depth-1, obj_bullet_big)
            with bullet{
                direction = point_direction(x,y,obj_player.x, obj_player.y) + spread(6)
                speed = 5
                image_xscale = 0.5
                image_yscale = 0.5
            }
            cooldown = true
            alarm[0] = 10
        }
    break
}