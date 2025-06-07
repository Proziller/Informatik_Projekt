event_inherited()

bullet_constant_ability = function(targetHit) {
    //go to the player when in a distance of 40
    var num = collision_circle(x, y, 40, obj_player, true, false)
    if num != noone{
        move_towards_point(num.x, num.y, move_spd)
    }
}