if !obj_player.dead{
    if x < 0 or y < 0 or x > room_width or y > room_height or position_meeting(x, y, obj_blockade){
        instance_destroy()
    }
    
    bullet_constant_ability()
    
    hit = instance_position(x, y, hitter)
    if hit != noone{
        hit.hp -= dmg
        
        bullet_hit_ability(hit);
        
        instance_destroy()
    }
}