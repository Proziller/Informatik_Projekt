//if the room is rm_home, resetting all counters for the fights and the loadout and clearing the singular power-ups
if room == rm_home{
    global.fight = 1
    global.round = 1
    global.traider = 0
    
    global.loadout = [[obj_gun_parrable, obj_bullet_arial], [ obj_gun_sprayer, obj_bullet_freezing], [obj_gun_sinper, obj_bullet_calorene_dense]]
    
    global.spowerupsActive = []
}
//if the room is rm_traider, resetting the traider counter
if room == rm_traider{
    global.traider = 0
}