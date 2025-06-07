//updating the global hp var to have the hp stay the same after switching rooms
global.hp = hp
if !dead && room != rm_home{
    
    
    //storing the direction in _ver and _hor
    var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"))
    var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"))
    
    //making the speed be right on diagonals
    if _ver != 0 && _hor != 0{
        playerSpeed = sqrt(sqr(speedOriginal)/2)
    }
    else { 
        playerSpeed = speedOriginal
    }
    
    //reducing the players speed when freezing
    if freezing{
        playerSpeed /= 2
    }
    
    //applying the speed powerup
    for (var i = 0; i < array_length(global.spowerupsActive); i++) {
        switch global.spowerupsActive[i] {
            case "playerspeed":
                Splayer_speed()
            break
        }
    }
    
    //move when not stunned
    if !stunned{
        move_and_collide(_hor * playerSpeed, _ver * playerSpeed, [obj_blockade, obj_border])
    }
    
    //making the movment smooth by giving a negativ force when hitting corners
    var upLeft = collision_rectangle(x-10, y-4, x-15, y-15, [obj_blockade, obj_border], false, false)
    var upRight = collision_rectangle(x+10, y-4, x+15, y-15, [obj_blockade, obj_border], false, false)
    var downLeft = collision_rectangle(x-10, y+8, x-15, y+15, [obj_blockade, obj_border], false, false)
    var downRight = collision_rectangle(x+10, y+8, x+15, y+15, [obj_blockade, obj_border], false, false)
    if upLeft != noone{
        x += 1
        y += 1
    }
    if upRight != noone{
        x -= 1
        y += 1
    }
    if downLeft != noone{
        x += 1
        y -= 1
    }
    if downRight != noone{
        x -= 1
        y -= 1
    }
    
    
    //making the wheel sprite match the direction
    if _hor + _ver == 1{
        if (_ver == 1) wheels.sprite_index = spr_player_wheels_front1
        else wheels.sprite_index = spr_player_wheels_sides1
    }
    if _hor + _ver == -1{
        if (_ver == -1) wheels.sprite_index = spr_player_wheels_front1
        else wheels.sprite_index = spr_player_wheels_sides1
    }
    
    
    
    //making all parts move
    body.x = x
    body.y = y
    wheels.x = x
    wheels.y = y
    grabber.x = x
    grabber.y = y
    gun.x = x
    gun.y = y-14
    
    
    
    //making the gun point to the mouse
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
    
    
    
    //on death
    if global.hp < 1{
        dead = true
        //deleting all bodyparts
        instance_destroy(body)
        instance_destroy(grabber)
        instance_destroy(wheels)
        instance_destroy(gun)
    }
}