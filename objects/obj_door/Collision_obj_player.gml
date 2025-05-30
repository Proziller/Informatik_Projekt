audio_stop_all()
switch room {
    case rm_arena:
        if global.fight < 5{
            room_goto(rm_arena)
        }
        else {
        	room_goto(rm_arena_boss)
        }
    break
    
    case rm_arena_boss:
        room_goto(rm_traider)
	break
    
    case rm_traider:
        room_goto(rm_arena)
    break
}