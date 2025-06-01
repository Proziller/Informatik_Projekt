if room == rm_home{
    global.fight = 1
    global.traider = 0
    global.round = 1
    global.spowerups_active = []
    global.loudout = [[obj_gun_semiauto, obj_bullet_arial], [ obj_gun_sprayer, obj_bullet_freezing], [obj_gun_sinper, obj_bullet_calorene_dense]]
}
if room == rm_arena{
    global.fight += 1
    global.traider += 1
}
if room == rm_traider{
    global.traider = 0
}