event_inherited()
gun = ""
path = path_add()

var max_index = array_length(obj_vars.guns) - 1
var index = irandom(max_index)
gun = instance_create_depth(x,y,depth-1,obj_vars.guns[irandom(array_length(obj_vars.guns) - 1)])

var bull = obj_bullet_confusion
while bull == obj_bullet_confusion {
    bull = obj_vars.bullets[irandom(array_length(obj_vars.bullets) - 1)]
}
shootin = false
gun.bullet = bull
gun.image_xscale = 2
gun.image_yscale = 2