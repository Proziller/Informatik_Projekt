//making the tooltip show the right thing
if room == rm_traider && object_index != obj_gun_placeholder{
    var ret = return_gun_and_bullet(global.loadout[1][0],global.loadout[1][1])
    if ret != [[""],[""]]{
        global.hover = ret
    }
}