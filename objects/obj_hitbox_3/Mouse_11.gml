if room == rm_traider && object_index != obj_gun_placeholder{
    var ret = return_gun_and_bullet(global.loadout[2][0],global.loadout[2][1])
    if ret != [[""],[""]]{
        global.hover = ret
    }
}