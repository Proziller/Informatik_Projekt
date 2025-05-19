var max_index = array_length(obj_vars.guns_enemy) - 1
var index = irandom(max_index)
gun = instance_create_depth(x,y,depth-1,obj_vars.guns_enemy[index])