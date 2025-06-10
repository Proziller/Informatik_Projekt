//if the room is rm_home, resetting all counters for the fights and clearing the singular power-ups
if room == rm_home{
    global.fight = 1
    global.round = 1
    global.traider = 0
    
    global.spowerupsActive = []
}
//if the room is rm_traider, resetting the traider counter
if room == rm_traider{
    global.traider = 0
}