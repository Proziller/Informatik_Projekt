instance_destroy(obj_player.gun)
selected_gun += 1
if selected_gun >= array_length(guns){
    selected_gun = 0
}
obj_player.gun = instance_create_depth(x,y,depth-1,obj_weapon_select.guns[obj_weapon_select.selected_gun])