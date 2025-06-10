//repeating the colision check, so that the bullet won't go through stuff
var _stepSpd = sprite_width / move_spd
var _stepCount = move_spd / _stepSpd
repeat(_stepCount){ 
    x += lengthdir_x(_stepSpd, move_dir)
    y += lengthdir_y(_stepSpd, move_dir)
    
    //if it hits the border or blockade destroying the bullet
    if place_meeting(x,y,[obj_blockade, obj_bullet_delete]){
        instance_destroy()
    }
    
    //checking for a hit and storing it in hit
    hit = instance_place(x, y, bulletTarget)
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
        }
    }
}
//activating the constant ability once per tick
bullet_constant_ability()