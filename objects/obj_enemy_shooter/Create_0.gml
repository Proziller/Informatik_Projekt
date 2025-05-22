event_inherited()
gun = ""
path = path_add()
var max_index = array_length(obj_vars.guns) - 1
var index = irandom(max_index)
gun = instance_create_depth(x,y,depth-1,obj_vars.guns[irandom(array_length(obj_vars.guns) - 1)])
gun.bullet = obj_vars.bullets[irandom(array_length(obj_vars.bullets) - 1)]
gun.image_xscale = 2
gun.image_yscale = 2