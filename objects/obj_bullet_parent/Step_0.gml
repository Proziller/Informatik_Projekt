//repeating the colision check, so that the bullet won't go through stuff
var _stepSpd = sprite_width / move_spd
var _stepCount = move_spd / _stepSpd
repeat(_stepCount){ 
    var xoffset = x + lengthdir_x(_stepSpd, move_dir)
    var yoffset = y + lengthdir_y(_stepSpd, move_dir)
    
    //if it hits the border or blockade destroying the bullet
    if place_meeting(xoffset,yoffset,[obj_blockade, obj_bullet_delete]){
        instance_destroy()
    }
    
    //checking for a hit and storing it in hit
    hit = instance_place(xoffset, yoffset, bulletTarget)
    if hit != noone{
            
        //if the hit is an enemy
        if object_is_ancestor(hit.object_index, obj_enemy_parent){
            
            //if the object shall be hit
            if !hit.confused{
                //has it already been hit by the bullet
                if !array_contains(hitted,hit){
                    
                    //adds the hit to the aready hitted
                    array_push(hitted, hit)
                    
                    //shall the bullet not pierce
                    if !piercing{ 
                        instance_destroy()
                    }
                    //doing damage
                    hit.hp -= dmg
                    
                    //activating the hit ability
                    bullet_hit_ability(hit)
                    hit.alarm[8] = 1
                }
            }
            
        }
        
        //if the target is the player
        else {
            
            //check to pierce
            if !piercing{
                instance_destroy()
            }
            
            //giving damage
            hit.hp -= dmg
            
            //activating the hit ability
            bullet_hit_ability(hit) 
            hit.alarm[8] = 1
        }
        var ps = part_system_create(ps_hit)
        part_system_position(ps, xoffset, yoffset)
        part_system_depth(ps, -100)
    }
}
x += lengthdir_x(move_spd, move_dir)
y += lengthdir_y(move_spd, move_dir)
//activating the constant ability once per tick
bullet_constant_ability()