//creating loadout
global.loadout = [[obj_gun_semiauto, obj_bullet_arial], [obj_gun_placeholder, obj_bullet_placeholder], [obj_gun_placeholder, obj_bullet_placeholder]]
global.selectedGun = 0
global.inv = [[obj_gun_shotgun, obj_bullet_bleeding], [obj_gun_placeholder, obj_bullet_placeholder], [obj_gun_placeholder, obj_bullet_placeholder], [obj_gun_placeholder, obj_bullet_placeholder]]
global.scraps = "0"
global.hover = noone

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

function shoot(count, damage, dgrOffset, selected, bulletSpread, bulletSpeed, dist, size, reloud, bullet, instance){
    if instance_exists(obj_player){
        //iterating for count
        for (var i = 0; i < count; i++) {
        	
            //creating the bullet and storing it in created_bullet
            var created_bullet = instance_create_depth(instance.x, instance.y, -9, bullet)
            
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
                var offset = (i*dgrOffset) - ((count * dgrOffset) / 2) + dgrOffset / 2
                image_angle += offset + spread(bulletSpread)
                
                //making the direction, the bullets moves, the direction, the bullet points to
                move_dir = image_angle
                //making the bullet move speed bulletSpeed
                move_spd = bulletSpeed * 2
                
                //multiplying the bullet's size by size
                image_xscale *= size
                image_yscale *= size
                
                //anitiating the deleting timer by setting it to dist
                alarm[0] = dist / bulletSpeed
            }
            //turning on cooldown and anitiating the cooldown timer
            instance.cooldown = true
            instance.alarm[0] = reloud
            
            var ps = part_system_create(ps_shoot)
            if selected{
                part_system_angle(ps, point_direction(x, y, mouse_x, mouse_y)-90 + (i*dgrOffset) - ((count * dgrOffset) / 2) + dgrOffset / 2)
            }
            else {
                part_system_angle(ps, point_direction(x, y, obj_player.x, obj_player.y)-90 + (i*dgrOffset) - ((count * dgrOffset) / 2) + dgrOffset / 2)
            }
            part_system_position(ps, instance.x, instance.y)
            part_system_depth(ps, instance.depth+1)
        }
    }
}


function return_gun_and_bullet(gun, bullet){
    var ret = [[], []]
    switch gun {
    	case obj_gun_auto:
            array_push(ret[0], "automatic")
        break
        
        
    	case obj_gun_big:
            array_push(ret[0], "big gun")
        break
        
        
    	case obj_gun_circle:
            array_push(ret[0], "circle gun")
        break
        
        
    	case obj_gun_parrable:
            array_push(ret[0], "alien gun")
        break
        
        
    	case obj_gun_semiauto:
            array_push(ret[0], "semi-automatic")
        break
        
        
    	case obj_gun_shotgun:
            array_push(ret[0], "shotgun")
        break
        
        
    	case obj_gun_sinper:
            array_push(ret[0], "sniper")
        break
        
        
    	case obj_gun_sprayer:
            array_push(ret[0], "spray gun")
        break
        
        
    	case obj_gun_superfast:
            array_push(ret[0], "turbo gun")
        break
    }
    
    switch bullet {
    	case obj_bullet_arial:
            array_push(ret[1], "arial")
        break
        
        
    	case obj_bullet_big:
            array_push(ret[1], "big")
        break
        
        
    	case obj_bullet_bleeding:
            array_push(ret[1], "bleeding")
        break
        
        
    	case obj_bullet_calorene_dense:
            array_push(ret[1], "fat")
        break
        
        
    	case obj_bullet_confusion:
            array_push(ret[1], "confusion")
        break
        
        
    	case obj_bullet_freezing:
            array_push(ret[1], "freezing")
        break
        
        
    	case obj_bullet_homing:
            array_push(ret[1], "homing")
        break
        
        
    	case obj_bullet_piercing:
            array_push(ret[1], "piercing")
        break
        
        
    	case obj_bullet_stun:
            array_push(ret[1], "stun")
        break
    }
    array_push(ret[0],"")
    array_push(ret[1],"")
    show_debug_message(ret)
    return ret
}