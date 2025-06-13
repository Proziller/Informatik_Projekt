switch room {
    case rm_arena:
        if global.traider < 3{
            room_goto(rm_arena)
            global.traider += 1
        }
        else {
        	room_goto(rm_arena_boss)
            global.fight += 1
        }
        global.fight += 1
    break
    
    case rm_arena_boss:
        room_goto(rm_traider)
        global.round += 1
        global.fight += 1
	break
    
    case rm_traider:
        room_goto(rm_arena)
    break
}
global.hp += obj_player.dashHp