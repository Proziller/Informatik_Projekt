depth = -100
switch room {
    case rm_arena:
        x = 552
        y = 48
        image_xscale = 8
        image_yscale = 8
    break
    case rm_traider:
        x = 276
        y = 24
        image_xscale = 4
        image_yscale = 4
    break
    case rm_home:
        y = -100
    break
}

switch (global.selected_gun) {
	case 0:
        sprite_index = spr_layout_select_1
    break
    
    case 1:
        sprite_index = spr_layout_select_2
    break 
    
    case 2:
        sprite_index = spr_layout_select_3
    break
}

if !instance_exists(global.loudout[0][0]){
    instance_create_depth(-100,-100,depth-1,global.loudout[0][0])
}
if !instance_exists(global.loudout[0][1]){
    instance_create_depth(-100,-100,depth-1,global.loudout[0][1])
}
if !instance_exists(global.loudout[1][0]){
    instance_create_depth(-100,-100,depth-1,global.loudout[1][0])
}
if !instance_exists(global.loudout[1][1]){
    instance_create_depth(-100,-100,depth-1,global.loudout[1][1])
}
if !instance_exists(global.loudout[2][0]){
    instance_create_depth(-100,-100,depth-1,global.loudout[2][0])
}
if !instance_exists(global.loudout[2][1]){
    instance_create_depth(-100,-100,depth-1,global.loudout[2][1])
}
if instance_exists(obj_loadout_1) && instance_exists(obj_loadout_2) && instance_exists(obj_loadout_3) && instance_exists(obj_loadout_bullet_3) && instance_exists(obj_loadout_bullet_2) && instance_exists(obj_loadout_bullet_1){
    obj_loadout_1.sprite_index = global.loudout[0][0].sprite_index
    obj_loadout_bullet_1.sprite_index = global.loudout[0][1].sprite_index
    
    obj_loadout_2.sprite_index = global.loudout[1][0].sprite_index
    obj_loadout_bullet_2.sprite_index = global.loudout[1][1].sprite_index
    
    obj_loadout_3.sprite_index = global.loudout[2][0].sprite_index
    obj_loadout_bullet_3.sprite_index = global.loudout[2][1].sprite_index
}