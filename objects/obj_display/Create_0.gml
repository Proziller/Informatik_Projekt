var gun = instance_create_depth(0,-100,-10,obj_vars.guns[random(array_length(obj_vars.guns))])
gun_spr = gun.sprite_index
gun_obj = gun.object_index
sprite_index = gun.sprite_index
instance_destroy(gun)
var bullet = instance_create_depth(0,-100,-10,obj_vars.bullets[random(array_length(obj_vars.bullets))])
bullet_spr = bullet.sprite_index
bullet_obj = bullet.object_index
instance_destroy(bullet)
org_x = 0
org_y = 0