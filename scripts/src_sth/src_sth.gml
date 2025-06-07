//creating loadout
global.loadout = [[obj_gun_semiauto, obj_bullet_piercing], [ obj_gun_sprayer, obj_bullet_freezing], [obj_gun_sinper, obj_bullet_calorene_dense]]
global.selectedGun = 0


//a simple function to determin spread by ammount
function spread(ammount){ 
    return random_range(-1,1) * ammount
}  
 
//===================creating level generating variables========================
//fight count all arena fights and bossfights
global.fight = 0
//traider counts the time to a traider
global.traider = 0
//round counts the cycles
global.round = 1


//======================the function to shoot:=============================

function shoot(count, damage, dgr_offset, selected, bullet_spread, bullet_speed, dist, size, reloud, bullet, instance){
    
    //iterating for count
    for (var i = 0; i < count; i++) {
    	
        //creating the bullet and storing it in created_bullet
        var created_bullet = instance_create_depth(x, y, -9, bullet)
        
        //if the gun is selectet/held by the player it changes the targets to be the enemies and points the bullet to the mouse
        if selected {
            with created_bullet{
                bulletTarget = [obj_enemy_parent]
                image_angle = point_direction(x, y, mouse_x, mouse_y)
            }
        }
        //else it points the bullet in the direction of the player
        else {
        	with created_bullet { 
                image_angle = point_direction(x, y, obj_player.x, obj_player.y)
            }
        }
        with created_bullet{
            //multiplies the damage by damage
            dmg *= damage
            
            //adding the offset degree(drg_offset) and spread
            var offset = (i*dgr_offset) - ((count * dgr_offset) / 2) + dgr_offset / 2
            image_angle += offset + spread(bullet_spread)
            
            //making the direction, the bullets moves, the direction, the bullet points to
            move_dir = image_angle
            //making the bullet move speed bullet_speed
            move_spd = bullet_speed * 2
            
            //multiplying the bullet's size by size
            image_xscale *= size
            image_yscale *= size
            
            //anitiating the deleting timer by setting it to dist
            alarm[0] = dist / 2
        }
        //turning on cooldown and anitiating the cooldown timer
        instance.cooldown = true
        instance.alarm[0] = reloud
    }
}