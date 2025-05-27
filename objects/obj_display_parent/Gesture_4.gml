var pos = instance_position(x, y, [obj_loadout_1, obj_loadout_2, obj_loadout_3])
if pos != noone{
    if pos.object_index == obj_loadout_1{
        obj_loadout_1.sprite_index = gun_spr
        obj_loadout_bullet_1.sprite_index = bullet_spr
        global.loudout[0][0] = gun_obj
        global.loudout[0][1] = bullet_obj
    }
    if pos.object_index == obj_loadout_2{
        obj_loadout_2.sprite_index = gun_spr
        obj_loadout_bullet_2.sprite_index = bullet_spr
        global.loudout[1][0] = gun_obj
        global.loudout[1][1] = bullet_obj
    }
    if pos.object_index == obj_loadout_3{
        obj_loadout_3.sprite_index = gun_spr
        obj_loadout_bullet_3.sprite_index = bullet_spr
        global.loudout[2][0] = gun_obj
        global.loudout[2][1] = bullet_obj
    }
    instance_destroy(obj_gunDisplay_bullet_up)
    instance_destroy(obj_gunDisplay_bullet_down)
    instance_destroy(obj_gunDisplay_down)
    instance_destroy(obj_gunDisplay_up)
}
x = org_x
y = org_y