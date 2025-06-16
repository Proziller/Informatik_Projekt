
//creating the array that stores all singular powerups
global.spowerups = ["bullet damage", "bullet distance", "bullet size", "gun spread", "bullet speed", "gun reload", "player speed"]

//creating the arrays that store all active powerups
global.spowerupsActive = []
global.ppowerupsActive = []

//the functions for the powerups

function Sbullet_distance(){
    obj_player.gun.bulletDist *= 1.2
}

function Sbullet_damage(){
    obj_player.gun.bulletDamage *= 1.1
}

function SbulletSpread(){
    obj_player.gun.bulletSpread *= 0.5
}

function Sbullet_size(){
    obj_player.gun.bulletSize *= 1.5
}

function  Sbullet_speed(){
    obj_player.gun.bulletSpeed *= 0.75
}

function Sgun_reload(){
    obj_player.gun.gunReload *= 0.75
}