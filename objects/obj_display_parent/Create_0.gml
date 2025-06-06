//choosing a gun by creating a random gun to get the sprite and object and then killing it
var gun = instance_create_depth(0,-100,-10,obj_vars.guns[random(array_length(obj_vars.guns))])
gun_spr = gun.sprite_index
gun_obj = gun.object_index
sprite_index = gun.sprite_index
instance_destroy(gun)

//choosing a bullet by creating a random bullet to get the sprite and object and then killing it
var bullet = instance_create_depth(0,-100,-10,obj_vars.bullets[random(array_length(obj_vars.bullets))])
bullet_spr = bullet.sprite_index
bullet_obj = bullet.object_index
instance_destroy(bullet)

//storing the original position of the display
org_x = x
org_y = y

//making it be drawn on top of the UI
depth = -200