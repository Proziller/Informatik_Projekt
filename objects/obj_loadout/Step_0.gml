if new_game{
    for (var i = 0; i < 3; i++) {
    	loudout[i] = [obj_vars.guns[random(array_length(obj_vars.guns))], obj_vars.bullets[random(array_length(obj_vars.bullets))]]
    }
    instance_destroy(obj_player.gun)
    
    obj_player.gun = instance_create_depth(x,y,depth-1,loudout[selected_gun][0])
    obj_player.gun.bullet = loudout[selected_gun][1]
    
    obj_player.gun.selected = true
    
    instance_create_depth(-100,-100,depth-1,loudout[0][1])
    instance_create_depth(-100,-100,depth-1,loudout[1][0])
    instance_create_depth(-100,-100,depth-1,loudout[1][1])
    instance_create_depth(-100,-100,depth-1,loudout[2][0])
    instance_create_depth(-100,-100,depth-1,loudout[2][1])
    
    obj_loadout_1.sprite_index = loudout[0][0].sprite_index
    obj_loadout_bullet_1.sprite_index = loudout[0][1].sprite_index
    
    obj_loadout_2.sprite_index = loudout[1][0].sprite_index
    obj_loadout_bullet_2.sprite_index = loudout[1][1].sprite_index
    
    obj_loadout_3.sprite_index = loudout[2][0].sprite_index
    obj_loadout_bullet_3.sprite_index = loudout[2][1].sprite_index
    
    new_game = false
}
switch (selected_gun) {
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