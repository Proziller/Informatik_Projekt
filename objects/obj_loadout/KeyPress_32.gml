instance_destroy(obj_player.gun)
selected_gun += 1
if selected_gun >= array_length(loudout_objects){
    selected_gun = 0
}
obj_player.gun = instance_create_depth(x,y,depth-1,loudout_objects[selected_gun])