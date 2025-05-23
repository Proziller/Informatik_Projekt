if !dead && room != rm_home{
    if room = rm_arena1{
        if y > 504{
            y = 504
        }
        if y < 30{
            y = 30
        }
        if x > 606{
            x = 606
        }
        if x < 34{
            x = 34
        }
    }
    
    sprite_index = body.sprite_index
    visible = false
    
    
    //movement
    var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
    var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));
    
    var nonos = [-1, 1];
    
    if _hor + _ver == 1{
        if (_ver == 1) wheels.sprite_index = spr_player_wheels_front1;
        else wheels.sprite_index = spr_player_wheels_sides1;
    }
    
    if _hor + _ver == -1{
        if (_ver == -1) wheels.sprite_index = spr_player_wheels_front1;
        else wheels.sprite_index = spr_player_wheels_sides1;
    }
    
    if array_contains(nonos, _hor) && array_contains(nonos, _ver){
        sped = sqrt(sqr(player_speed_original)/2)
    }
    
    else { 
        sped = player_speed_original;
    }
    
    move_and_collide(_hor * sped, _ver * sped, obj_blockade);
    
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
        image_angle = point_direction(x, y, mouse_x, mouse_y);
        if image_angle < 90 or image_angle > 270{
            image_yscale = 1.5
        }
        else {
            image_yscale = -1.5
        }
        image_xscale = 1.5
    }
    
    if hp < 1{
        sprite_index = spr_explosion
        image_speed = 7
        dead = true
        instance_destroy(body)
        instance_destroy(grabber)
        instance_destroy(wheels)
        instance_destroy(gun)
    }
}