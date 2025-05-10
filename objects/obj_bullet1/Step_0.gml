if x < 0 or y < 0 or x > room_width or y > room_height or position_meeting(x, y, obj_blockade){
    instance_destroy(self)
}

var hit = instance_position(x, y, obj_enemy)
if hit != noone{
    instance_destroy(self)
    hit.hp -= 1
}