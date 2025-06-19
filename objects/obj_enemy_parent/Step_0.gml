if instance_exists(obj_player){
    //when hp < 1 set dying to true
    if hp < 1 && !dying{
        sprite_index = spr_explosion
        path_end()
        dying = true
        if object_is_ancestor(object_index, obj_enemy_parent){
            change_cam_shake(0, 4, 0.25)
            cam_shake()
        }
    }
    
    //end the path when stunned or the player is dead
    if stunned or obj_player.dead{
        path_end()
    }
    
    //make the confusion bullet effect not work when only one enemy is remaining
    if obj_vars.enemiesAlive = 1{
        confused = false
        destination = obj_player
    }
}

if (floor(image_index) != floor(animationFrame)) { 
    animationFrame = image_index
    var sound = array_get(pops, irandom(array_length(pops) - 1))
    audio_play_sound(sound, 1, false)
    show_debug_message("bib")
}