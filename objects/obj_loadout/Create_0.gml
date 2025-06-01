function switch_gun(num){
    var cooldown = obj_player.gun.alarm[0]
    instance_destroy(obj_player.gun)
    obj_player.gun = instance_create_depth(obj_player.x,obj_player.y,depth-1,global.loudout[num][0])
    if obj_player.gun.reloud > 1{
        obj_player.gun.alarm[0] = round(obj_player.gun.reloud / 2)
        obj_player.gun.cooldown = true
    }
    
    global.selected_gun = num
    var gun = obj_player.gun
    gun.selected = true
    gun.bullet = global.loudout[num][1]
    gun.selected = true
    
    for (var i = 0; i < array_length(global.spowerups_active); i++) {
        switch global.spowerups_active[i] {
            case "damage":
                Sbullet_damage()
                show_debug_message("damage")
            break
            
            case "distance":
                Sbullet_distance()
                show_debug_message("distance")
            break
            
            case "bulletsize":
                Sbullet_size()
                show_debug_message("size")
            break
            
            case "spread":
                Sbullet_spread()
                show_debug_message("spread")
            break
        }
    }
}