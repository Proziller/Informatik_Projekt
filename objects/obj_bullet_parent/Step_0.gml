if x < 0 or y < 0 or x > room_width or y > room_height or position_meeting(x, y, obj_blockade){
    instance_destroy()
}

hit = instance_position(x, y, obj_enemy_parent)
if hit != noone{
    bulletAbility(hit);
    hit.hp -= dmg
    instance_destroy()
}