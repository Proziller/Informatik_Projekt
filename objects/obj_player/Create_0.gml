//creating the body parts
body = instance_create_depth(x,y,-2,obj_player_body)
sprite_index = body.sprite_index
grabber = instance_create_depth(x,y,-3,obj_player_grabber)
wheels = instance_create_depth(x,y,-1,obj_player_wheels)
visible = false

//creating the gun and setting it up to be the players gun
gun = instance_create_depth(obj_player.x,obj_player.y,depth-1,global.loadout[global.selectedGun][0])
gun.selected = true
gun.bullet = global.loadout[global.selectedGun][1]

//setting up speed
speedOriginal = 3
playerSpeed = speedOriginal
 
//applying the speed powerup
for (var i = 0; i < array_length(global.spowerupsActive); i++) {
    switch global.spowerupsActive[i] {
        case "player speed":
            speedOriginal *= 1.25
        break
    }
}
for (var i = 0; i < array_length(global.ppowerupsActive); i++) {
    switch global.ppowerupsActive[i] {
        case "player speed":
            speedOriginal *= 1.10
        break
    }
}

//setting up health
maxhp = 40
if room == rm_home{
    hp = maxhp
}
else {
    hp = global.hp
}

//setting up the dash
dashCooldown = false
dashHp = 0

//creating dead var
dead = false

//setting up effects
bleed = 5
freezing = false
stunned = false
stunCooldown = false