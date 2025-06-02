bodies = [spr_boss_body_heavy, spr_boss_body_normal, spr_boss_body_slim]
body = bodies[irandom(array_length(bodies)-1)]
sprite_index = body

switch body {
	case spr_boss_body_slim:
        head_pos = [0, -12]
        arms_pos = [20, -4]
        legs_pos = [15, 18]
        hp = 25
    break
    
	case spr_boss_body_normal:
        head_pos = [0, -10]
        arms_pos = [18, 0]
        legs_pos = [12, 22]
        hp = 33
    break
    
    case spr_boss_body_heavy:
        head_pos = [0, -12]
        arms_pos = [25, -2]
        legs_pos = [12, 33]
        hp = 50
    break
}