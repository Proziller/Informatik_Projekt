//creating loadout
global.loadout = [[obj_gun_semiauto, obj_bullet_arial], [obj_gun_placeholder, obj_bullet_placeholder], [obj_gun_placeholder, obj_bullet_placeholder]]
global.selectedGun = 0
global.inv = [[obj_gun_shotgun, obj_bullet_bleeding], [obj_gun_placeholder, obj_bullet_placeholder], [obj_gun_placeholder, obj_bullet_placeholder], [obj_gun_placeholder, obj_bullet_placeholder]]
global.scraps = "0"
global.hover = [["",""],["",""]]
global.hoverLevel = ""
global.levelHover = ""

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
            array_push(ret[0], "gun: automatic")
            array_push(ret[0], "shoots a constant stream of bullets")
        break
        
        
    	case obj_gun_big:
            array_push(ret[0], "gun: big gun")
            array_push(ret[0], "shoots a bigger bullet pretty far")
        break
        
        
    	case obj_gun_circle:
            array_push(ret[0], "gun: circle gun")
            array_push(ret[0], "shoots a circle of bullets")
        break
        
        
    	case obj_gun_parrable:
            array_push(ret[0], "gun: alien gun")
            array_push(ret[0], "shoots a circle of bullets and a bigger bullet")
        break
        
        
    	case obj_gun_semiauto:
            array_push(ret[0], "gun: semi- automatic")
            array_push(ret[0], "shoots three bullets")
        break
        
        
    	case obj_gun_shotgun:
            array_push(ret[0], "gun: shotgun")
            array_push(ret[0], "a shotgun")
        break
        
        
    	case obj_gun_sinper:
            array_push(ret[0], "gun: sniper")
            array_push(ret[0], "a sniper")
        break
        
        
    	case obj_gun_sprayer:
            array_push(ret[0], "gun: spray gun")
            array_push(ret[0], "shoots not far, but many bullets")
        break
        
        
    	case obj_gun_superfast:
            array_push(ret[0], "gun: turbo gun")
            array_push(ret[0], "shoots a bullet very fast and far")
        break
    }
    
    switch bullet {
    	case obj_bullet_arial:
            array_push(ret[1], "bullet: arial")
            array_push(ret[1], "does damage to instances near the hit instance")
        break
        
        
    	case obj_bullet_big:
            array_push(ret[1], "bullet: big")
            array_push(ret[1], "a big bullet")
        break
        
        
    	case obj_bullet_bleeding:
            array_push(ret[1], "bullet: bleeding")
            array_push(ret[1], "damages the hit instance over time")
        break
        
        
    	case obj_bullet_calorene_dense:
            array_push(ret[1], "bullet: fat")
            array_push(ret[1], "makes the hit instance bigger")
        break
        
        
    	case obj_bullet_confusion:
            array_push(ret[1], "bullet: confusion")
            array_push(ret[1], "makes hit enemies target other enemies")
        break
        
        
    	case obj_bullet_freezing:
            array_push(ret[1], "bullet: freezing")
            array_push(ret[1], "makes the hit instace slower")
        break
        
        
    	case obj_bullet_homing:
            array_push(ret[1], "bullet: homing")
            array_push(ret[1], "homes to the neares instance")
        break
        
        
    	case obj_bullet_piercing:
            array_push(ret[1], "bullet: piercing")
            array_push(ret[1], "goes through an instance")
        break
        
        
    	case obj_bullet_stun:
            array_push(ret[1], "bullet: stun")
            array_push(ret[1], "stunes the hit instance")
        break
    }
    return ret
}