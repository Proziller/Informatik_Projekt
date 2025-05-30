audio_stop_all()
if global.fight < 5 {
    room_goto(rm_arena)
    global.fight += 1
}
else {
    room_goto(rm_arena_boss)
}