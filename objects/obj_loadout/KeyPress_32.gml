instance_destroy(obj_player.gun)
selected_gun += 1
if selected_gun >= array_length(loudout){
    selected_gun = 0
}
obj_player.gun = instance_create_depth(x,y,depth-1,loudout[selected_gun][0])
obj_player.gun.bullet = loudout[selected_gun][1]