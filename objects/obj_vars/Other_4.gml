if room == rm_home{
    global.fight = 0
    global.spowerups_active = []
}
if room == rm_arena{
    global.fight += 1
}
if room == rm_traider{
    global.fight = 1
}