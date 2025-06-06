//creating the body parts
body = instance_create_depth(x,y,-2,obj_player_body)
sprite_index = body.sprite_index
grabber = instance_create_depth(x,y,-3,obj_player_grabber)
wheels = instance_create_depth(x,y,-1,obj_player_wheels)
visible = false

//creating the gun and setting it up to be the players gun
gun = instance_create_depth(obj_player.x,obj_player.y,depth-1,global.loadout[global.selected_gun][0])
gun.selected = true
gun.bullet = global.loadout[global.selected_gun][1]

//setting up speed
speed_original = 4
playerSpeed = speed_original

//setting up health
maxhp = 40
hp = maxhp

//setting up the dash
dash_cooldown = false

//creating dead var
dead = false

//setting up effects
bleed = 5
freezing = false
stunned = false
stunCooldown = false