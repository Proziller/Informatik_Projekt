if !dead{
    if y > room_height - 31{
        y = room_height - 31;
    }
    if x > room_width - 26{
        x = room_width - 26;
    }
    if y < - 1{
        y = - 1;
    }
    if x < - 7 {
    	x = - 7;
    }
    
    gun.selected = true
    
    sprite_index = body.sprite_index
    
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
        player_speed = 0.75 * player_speed_original;
    }
    
    else { 
        player_speed = player_speed_original;
    }
    
    move_and_collide(_hor * player_speed, _ver * player_speed, obj_blockade);
    
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
    
    if cooldown > 0{
        cooldown -= 1
    }
    
    if mouse_check_button(mb_left) && cooldown == 0 {
        cooldown = 7
        var bullet = instance_create_depth(x, y-16, -10, gun.bullet)
    }
    if hp < 1{
        sprite_index = spr_explosion
        image_speed = 7
        dead = true
        body.visible = false
        grabber.visible = false
        wheels.visible = false
    }
}