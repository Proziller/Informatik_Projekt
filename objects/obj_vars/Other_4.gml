if room == rm_home{
    global.fight = 0
    global.spowerups_active = []
}
if room == rm_arena{
    global.fight += 1
    global.traider += 1
}