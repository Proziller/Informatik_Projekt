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

sprite_index = body.sprite_index

var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));

var nonos = [-1, 1];

if _hor + _ver == 1{
    if (_ver == 1) wheels.sprite_index = spr_player_wheels_front_1;
    else wheels.sprite_index = spr_player_wheels_sides_1;
}

if _hor + _ver == -1{
    if (_ver == -1) wheels.sprite_index = spr_player_wheels_front_1;
    else wheels.sprite_index = spr_player_wheels_sides_1;
}

if array_contains(nonos, _hor) && array_contains(nonos, _ver){
    player_speed = 0.8 * player_speed_original;
}

else { 
    player_speed = player_speed_original;
}


move_and_collide(_hor * player_speed, _ver * player_speed, obj_blockade);

wheels.x = x
wheels.y = y
grabber.x = x
grabber.y = y

if cooldown > 0{
    cooldown -= 1
}

if mouse_check_button(mb_left) && cooldown == 0 {
    cooldown = 7
    var bullet = instance_create_depth(x + 16, y + 5, -10, gun)
}