switch room {
    case rm_home:
        audio_play_sound(msk_home,2,false)
        alarm[0] = 769
    break
    case rm_traider:
        audio_play_sound(msk_traider,2,false)
        alarm[0] = 385
    break
    case rm_arena:
        audio_play_sound(msk_fight_arena, 2,false)
        alarm[0] = 769
    break
    case rm_arena_boss:
        audio_play_sound(msk_fight_boss, 2,false)
        alarm[0] = 769
    break
	
}