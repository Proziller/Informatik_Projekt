if armL.sprite_index == spr_boss_arm_spray or armR.sprite_index == spr_boss_arm_spray{
    if collision_line(x, y, obj_player.x, obj_player.y, obj_blockade, true, false) != noone or distance_to_object(obj_player) > 250{
        sped = leg.boss_speed
        event_inherited()
    }
}
else{
    if armL.sprite_index == spr_boss_arm_homing or armR.sprite_index == spr_boss_arm_homing{
        if collision_line(x, y, obj_player.x, obj_player.y, obj_blockade, true, false) != noone or distance_to_object(obj_player) > 150{
            sped = leg.boss_speed
            event_inherited()
        }
    }
    else {
        if armL.sprite_index == spr_boss_arm_circle or armR.sprite_index == spr_boss_arm_circle{
            if collision_line(x, y, obj_player.x, obj_player.y, obj_blockade, true, false) != noone or distance_to_object(obj_player) > 150{
                sped = leg.boss_speed
                event_inherited()
            }
        }
    }
}

alarm[0]= 15