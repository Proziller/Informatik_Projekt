selected = false
bullet = obj_bullet_arial
depth = -10
cooldown = 0
pressed = false
distance = 200
count = 1
dgr_offset = 0
bullet_spread = 0
damage = 1
sped = 10
dist = 60
size = 1
reloud = 1
constant_spread = 0

function shoot (count, damage, dgr_offset, selected, bullet_spread, sped, dist, size, constant_spread, reloud){
    for (var i = 0; i < count; i++) {
        var created_bullet = instance_create_depth(x, y, -9, bullet)
        if selected {
            with created_bullet{
                hitter = obj_enemy_parent
                direction = point_direction(x, y, mouse_x, mouse_y)
            }
        }
        with created_bullet{
            dmg *= damage
            direction += (i*dgr_offset) - ((count * dgr_offset) / 2) + dgr_offset / 2 + spread(bullet_spread)
            speed = sped
            image_angle = direction
            alarm[0] = dist
            image_xscale = size
            image_yscale = size
        }
        cooldown = 1
        alarm[0] = reloud
    }
}