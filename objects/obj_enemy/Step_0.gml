if instance_exists(obj_player){
    move_towards_point(obj_player.x, obj_player.y, sped)
}
else{
    speed = 0
}

if position_meeting(x, y, obj_blockade){
    sped = -3 * power(0.9999, distance_to_object(obj_player))
}
else {
    sped =  2.5 * power(0.9999, distance_to_object(obj_player))
}

if hp < 1{
    instance_destroy(self)
}

image_speed = 5 * power(0.99, distance_to_object(obj_player))

var hit = instance_position(x, y, obj_player)
if hit != noone{
    sprite_index = spr_explosion
}