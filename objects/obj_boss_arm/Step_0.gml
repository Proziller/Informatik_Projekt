switch arm {
	case spr_boss_arm_spray:
        direction = point_direction(x,y,obj_player.x, obj_player.y)
        if !cooldown {
            shoot(1, 1, 0, false, 6, 10, 30, 1, 10, obj_bullet_big, self)
        }
    break
}