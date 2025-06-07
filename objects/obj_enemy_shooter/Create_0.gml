event_inherited()

//create the var that stores the gun
gun = ""

//creatin a path and storing it in the var path
path = path_add()

// choosing the gun from 
var max_index = array_length(obj_vars.guns) - 1
var index = irandom(max_index)
gun = instance_create_depth(x,y,depth-1,obj_vars.guns[index])

//setting up the guns bullet and let it not be confusion
var bull = obj_bullet_confusion
while bull == obj_bullet_confusion {
    bull = obj_vars.bullets[irandom(array_length(obj_vars.bullets) - 1)]
}
gun.bullet = bull

//making the enemy only shoot after beeing able to move
activeTime = false