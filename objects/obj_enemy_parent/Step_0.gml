if instance_exists(obj_player){
    //when hp < 1 set dying to true
    if hp < 1 && !dying{
        sprite_index = spr_explosion
        path_end()
        dying = true
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