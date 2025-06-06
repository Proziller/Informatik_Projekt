
//creating the array that stores all singular powerups
global.spowerups = ["bulletdamage", "bulletdistance", "bulletsize", "bulletspread", "playerspeed", "playerhealth"]

//creating the array that store all active singular powerups
global.spowerups_active = []

//the functions for the powerups
function Splayer_health(){
    obj_player.hp += 10
}

function Splayer_speed(){
    obj_player.player_speed_original *= 1.2
}

function Sbullet_distance(){
    obj_player.gun.bulletDist *= 1.2
}

function Sbullet_damage(){
    obj_player.gun.bulletDamage *= 1.1
}

function Sbullet_spread(){
    obj_player.gun.bulletSpread *= 0.5
}

function Sbullet_size(){
    obj_player.gun.bulletSize *= 1.5
}