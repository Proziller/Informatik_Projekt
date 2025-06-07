//shoot when not stunned
if !stunned && instance_exists(gun){
    gun.pressed = true
}