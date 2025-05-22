instance_destroy(obj_player.gun)
selected_gun += 1
if selected_gun >= array_length(loudout){
    selected_gun = 0
}

obj_player.gun = instance_create_depth(obj_player.x,obj_player.y,depth-1,loudout[selected_gun][0])
var gun = obj_player.gun
gun.selected = true
gun.bullet = loudout[selected_gun][1]
gun.selected = true