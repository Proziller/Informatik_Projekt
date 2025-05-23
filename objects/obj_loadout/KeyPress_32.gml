instance_destroy(obj_player.gun)
global.selected_gun += 1
if global.selected_gun >= array_length(global.loudout){
    global.selected_gun = 0
}

obj_player.gun = instance_create_depth(obj_player.x,obj_player.y,depth-1,global.loudout[global.selected_gun][0])
var gun = obj_player.gun
gun.selected = true
gun.bullet = global.loudout[global.selected_gun][1]
gun.selected = true