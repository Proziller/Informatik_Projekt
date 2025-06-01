switch room {
    case rm_arena:
        if global.traider < 3{
            room_goto(rm_arena)
        }
        else {
        	room_goto(rm_arena_boss)
        }
    break
    
    case rm_arena_boss:
        room_goto(rm_traider)
        global.round += 1
	break
    
    case rm_traider:
        room_goto(rm_arena)
    break
}