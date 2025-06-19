//making the wall move in a direction
x += x_speed
y += y_speed

//delete the wall when hitting a blockade or the border of the map
if place_meeting(x, y, [obj_blockade, obj_border]){
    instance_destroy()
}

//do damage when hitting the player
var hit = instance_place(x, y, obj_player)
if hit != noone{
    instance_destroy()
    hit.hp -= 3
    hit.alarm[8] = 1
}