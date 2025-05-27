audio_stop_all()
show_debug_message(global.traider)
if room == rm_arena{
    room_goto(rm_arena)
    if global.traider = 5{
        room_goto(rm_traider)
    }
}
if room == rm_traider{
    room_goto(rm_arena)
}