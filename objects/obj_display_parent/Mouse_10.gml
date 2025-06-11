if gun_obj != obj_gun_placeholder{
    var ret = return_gun_and_bullet(gun_obj, bullet_obj)
    if ret != [[""],[""]]{
        global.hover = ret
    }
}