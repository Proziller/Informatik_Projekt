bodies = [spr_boss_body_heavy, spr_boss_body_normal, spr_boss_body_slim]
body = bodies[irandom(array_length(bodies)-1)]
sprite_index = body

switch body {
	case spr_boss_body_slim:
        headPos = [0, -12]
        armPos = [20, -4]
        legPos = [15, 18]
        hp = 25
    break
    
	case spr_boss_body_normal:
        headPos = [0, -10]
        armPos = [18, 0]
        legPos = [12, 22]
        hp = 33
    break
    
    case spr_boss_body_heavy:
        headPos = [0, -12]
        armPos = [25, -2]
        legPos = [12, 33]
        hp = 50
    break
}