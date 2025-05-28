global.spowerups = ["damage", "distance", "health", "bulletsize", "spread"]
global.spowerups_active = []
function Shealth(){
    obj_player.hp += 10
}
function Sbulletdistance(){
    obj_player.gun.dist *= 1.2
}
function Sbulletdamage(){
    obj_player.gun.damage *= 1.2
}
function Sbulletspread(){
    obj_player.gun.bullet_spread *= 0.5
}
function Sbulletsize(){
    obj_player.gun.size *= 1.2
}