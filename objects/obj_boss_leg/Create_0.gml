//array that stores all legs
legs = [spr_boss_legs_normal]

//picking the leg
leg = legs[irandom(array_length(legs)-1)]
sprite_index = leg

//setting the speed
switch leg {
	case spr_boss_legs_normal:
        boss_speed = 1
    break
}