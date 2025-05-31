if room == rm_home{
    global.fight = 0
    global.traider = 0
    global.round = 0
    global.spowerups_active = []
}
if room == rm_arena{
    global.fight += 1
    global.traider += 1
}
if room == rm_traider{
    global.traider = 0
}