audio_stop_all()
if room == rm_arena1{
    room_goto(rm_traider)
    fight += 1
}
if room == rm_traider{
    room_goto(rm_arena1)
}