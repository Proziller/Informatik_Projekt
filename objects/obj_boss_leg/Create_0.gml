//array that stores all legs
legs = [spr_boss_legs_normal, spr_boss_legs_fast, spr_boss_legs_slow]

//picking the leg
leg = legs[irandom(array_length(legs)-1)]
sprite_index = leg

//setting the speed
switch leg {
	case spr_boss_legs_fast:
        boss_speed = 2
    break
    
	case spr_boss_legs_normal:
        boss_speed = 1
    break
    
	case spr_boss_legs_slow:
        boss_speed = 0.5
    break
}