var _stepSpd = sprite_width / move_spd
var _stepCount = move_spd / _stepSpd

repeat(_stepCount){ 
    x += lengthdir_x(_stepSpd, move_dir);
    y += lengthdir_y(_stepSpd, move_dir);
    
    if x < 0 or y < 0 or x > room_width or y > room_height or place_meeting(x, y, obj_blockade){
        instance_destroy()
    }
}

bullet_constant_gun_ability()
bullet_constant_ability()

hit = instance_position(x, y, hitter)
if hit != noone{
    
    if object_is_ancestor(hit.object_index, obj_enemy_parent){
        if !hit.passthrough {
            if !piecing{ 
                instance_destroy()
            }
            hit.hp -= dmg
            bullet_hit_ability(hit)
        }
    }
    else {
        if !piecing{
            instance_destroy()
        }
        hit.hp -= dmg
        bullet_hit_ability(hit)
    }
}