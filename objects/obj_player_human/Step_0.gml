var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"))
var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"))
var sped = 1
var nonos = [-1, 1]
if array_contains(nonos, _hor) && array_contains(nonos, _ver){
    sped = sqrt(sqr(1)/2)
}
if _hor + _ver > 0 or _hor + _ver < 0{
    image_speed = 1
}
else {
	 image_speed = 0
}
move_and_collide(_hor * sped, _ver * sped, [obj_blockade,obj_border])
obj_player.hp = obj_player.maxhp