if variable_instance_exists(self,"hp") && variable_global_exists("hp"){
    hp = global.hp
}
if room == rm_home{
    global.hp = maxhp
}