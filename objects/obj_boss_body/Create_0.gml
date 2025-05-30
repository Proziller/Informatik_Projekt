bodies = [spr_boss_body_slim]
body = bodies[irandom(array_length(bodies)-1)]
sprite_index = body
switch body {
	case spr_boss_body_slim:
        head_pos = [0, -10]
        arms_pos = [18, 0]
        legs_pos = [12, 22]
        hp = 50
    break
}