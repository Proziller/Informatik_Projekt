//updating the global hp var to have the hp stay the same after switching rooms
global.hp = hp
if !dead && room != rm_home{
    
    //do the move script, when not stunned
    if !stunned{
        var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"))
        var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"))
        
        var nonos = [-1, 1]
        
        if _hor + _ver == 1{
            if (_ver == 1) wheels.sprite_index = spr_player_wheels_front1
            else wheels.sprite_index = spr_player_wheels_sides1
        }
        
        if _hor + _ver == -1{
            if (_ver == -1) wheels.sprite_index = spr_player_wheels_front1
            else wheels.sprite_index = spr_player_wheels_sides1
        }
        
        if array_contains(nonos, _hor) && array_contains(nonos, _ver){
            playerSpeed = sqrt(sqr(speed_original)/2)
        }
        
        else { 
            playerSpeed = speed_original
        }
        
        if freezing{
            playerSpeed /= 2
        }
        
        for (var i = 0; i < array_length(global.spowerups_active); i++) {
        	switch global.spowerups_active[i] {
            	case "playerspeed":
                    Splayer_speed()
                break
            }
        }
        move_and_collide(_hor * playerSpeed, _ver * playerSpeed, [obj_blockade, obj_border])
    }
    
    //having all parts moving
    body.x = x
    body.y = y
    wheels.x = x
    wheels.y = y
    grabber.x = x
    grabber.y = y
    gun.x = x
    gun.y = y-14
    
    with gun {
        image_angle = point_direction(x, y, mouse_x, mouse_y)
        if image_angle < 90 or image_angle > 270{
            image_yscale = 1.5
        }
        else {
            image_yscale = -1.5
        }
        image_xscale = 1.5
    }
    
    if global.hp < 1{
        sprite_index = spr_explosion
        image_speed = 7
        dead = true
        instance_destroy(body)
        instance_destroy(grabber)
        instance_destroy(wheels)
        instance_destroy(gun)
    }
}
if dead{
    room_goto(rm_home)
}