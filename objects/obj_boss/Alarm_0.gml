//make the sptop distance match the guns/arms
if armL.sprite_index == spr_boss_arm_spray or armR.sprite_index == spr_boss_arm_spray{
    //go when not in distance or there isn't a clear sightline
    if collision_line(x, y, obj_player.x, obj_player.y, obj_blockade, true, false) != noone or distance_to_object(obj_player) > 250{
        enemySpeed = leg.boss_speed
        event_inherited()
    }
}
else{
    if armL.sprite_index == spr_boss_arm_homing or armR.sprite_index == spr_boss_arm_homing{
        //go when not in distance or there isn't a clear sightline
        if collision_line(x, y, obj_player.x, obj_player.y, obj_blockade, true, false) != noone or distance_to_object(obj_player) > 150{
            enemySpeed = leg.boss_speed
            event_inherited()
        }
    }
    else {
        if armL.sprite_index == spr_boss_arm_circle or armR.sprite_index == spr_boss_arm_circle{
        //go when not in distance or there isn't a clear sightline
            if collision_line(x, y, obj_player.x, obj_player.y, obj_blockade, true, false) != noone or distance_to_object(obj_player) > 57{
                enemySpeed = leg.boss_speed
                event_inherited()
            }
        }
    }
}
//make it loop more often than normal because the game can afford it
alarm[0]= 15