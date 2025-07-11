//the function to switch the gun
function switch_gun(num){
    
    if room != rm_computer{
        //destroy the players gun
        instance_destroy(obj_player.gun)
        
        //creating the new gun, that is in global.loadout[num][0]
        obj_player.gun = instance_create_depth(obj_player.x,obj_player.y,depth-1,global.loadout[num][0])
        
        //making it, so the player can't shoot straight away when switching
        if obj_player.gun.gunReload > 1{
            obj_player.gun.alarm[0] = round(obj_player.gun.gunReload / 2)
            obj_player.gun.cooldown = true
        }
        
        //making global.selectedGun match the now selected gun
        global.selectedGun = num
        
        //setting up the gun to be selected and have the right bullet 
        var gun = obj_player.gun
        gun.selected = true
        gun.bullet = global.loadout[num][1]
        
        //giving the gun all the powerups the player has active
        for (var i = 0; i < array_length(global.spowerupsActive); i++) {
            switch global.spowerupsActive[i] {
                case "bullet damage":
                    Sbullet_damage()
                break
                
                case "bullet distance":
                    Sbullet_distance()
                break
                
                case "bullet size":
                    Sbullet_size()
                break
                
                case "gun spread":
                    SbulletSpread()
                break
                
                case "gun reload":
                    Sgun_reload()
                break
                
                case  "bullet speed":
                    Sbullet_speed()
                break
            }
        }
        for (var i = 0; i < array_length(global.ppowerupsActive); i++) {
            switch global.ppowerupsActive[i] {
                case "bullet damage":
                    Sbullet_damage()
                break
                
                case "bullet distance":
                    Sbullet_distance()
                break
                
                case "bullet size":
                    Sbullet_size()
                break
                
                case "gun spread":
                    SbulletSpread()
                break
                
                case "gun reload":
                    Sgun_reload()
                break
                
                case  "bullet speed":
                    Sbullet_speed()
                break
            }
        }
    }
}
// making the selector be drawn on top of the rest of the UI
depth = -50