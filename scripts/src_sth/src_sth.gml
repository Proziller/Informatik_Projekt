function spread(ammount){
    return random_range(-1,1) * ammount
}
global.loudout = [[obj_gun_semiauto, obj_bullet_arial], [ obj_gun_sprayer, obj_bullet_freezing], [obj_gun_sinper, obj_bullet_calorene_dense]]
global.selected_gun = 0
global.fight = 0
global.traider = 0
global.round = 1

function shoot(count, damage, dgr_offset, selected, bullet_spread, sped, dist, size, reloud, bullet, instance){
    for (var i = 0; i < count; i++) {
        var created_bullet = instance_create_depth(x, y, -9, bullet)
        if selected {
            with created_bullet{
                hitter = [obj_enemy_parent, obj_boss]
                image_angle = point_direction(x, y, mouse_x, mouse_y)
            }
        }
        else {
        	with created_bullet {
                var list = ds_list_create();
                ds_list_clear(list);
                var num = collision_circle_list(x, y, 1000, obj_player, false, false, list, true);
                if num != 0{
            	    image_angle = point_direction(x, y, list[| 0].x, list[| 0].y)
                }
            }
        }
        with created_bullet{
            dmg *= damage 
            image_angle += (i*dgr_offset) - ((count * dgr_offset) / 2) + dgr_offset / 2 + spread(bullet_spread)
            move_dir = image_angle
            move_spd = sped
            alarm[0] = dist
            image_xscale *= size
            image_yscale *= size
        }
        instance.cooldown = true
        instance.alarm[0] = reloud
    }
}