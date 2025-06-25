//updating the global hp var to have the hp stay the same after switching rooms
global.hp = hp
if !dead && room != rm_home{
    
    
    //storing the direction in _ver and _hor
    directionX = keyboard_check(ord("D")) - keyboard_check(ord("A"))
    directionY = keyboard_check(ord("S")) - keyboard_check(ord("W"))
    
    //making the speed be right on diagonals
    if directionY != 0 && directionX != 0{
        playerSpeed = sqrt(sqr(speedOriginal)/2)
    }
    else { 
        playerSpeed = speedOriginal
    }
    
    //reducing the players speed when freezing
    if freezing{
        playerSpeed /= 2
    }
    
    //move when not stunned
    if !stunned{
        move_and_collide(directionX * playerSpeed, directionY * playerSpeed, [obj_blockade, obj_border])
    }
    
    
    //if (directionY != 0 or directionX != 0) {
        //if !audio_is_playing(snd_drive){
            //audio_play_sound(snd_drive, 1, false)
            //audio_sound_pitch(snd_drive, 0.75)
        //}
    //}
    //else {
        //if audio_is_playing(snd_drive){
            //audio_play_sound(snd_drive_end, 1, false)
            //audio_sound_pitch(snd_drive_end, 0.75)
    	    //audio_stop_sound(snd_drive)
        //}
    //}
    
    
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
    if directionX + directionY == 1{
        if (directionY == 1) wheels.sprite_index = spr_player_wheels_front1
        else wheels.sprite_index = spr_player_wheels_sides1
    }
    if directionX + directionY == -1{
        if (directionY == -1) wheels.sprite_index = spr_player_wheels_front1
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
    gun.y = y-12
    
    
    
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
}
if dash{
    var xOff = random_range(-0.5, 0.5)
    var yOff = random_range(-0.5, 0.5)
    camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0]) + directionX + xOff, camera_get_view_y(view_camera[0]) + directionY + yOff)
}