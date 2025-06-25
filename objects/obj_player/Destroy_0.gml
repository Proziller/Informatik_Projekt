room_goto(rm_home)

//make the loadout have a random gun on death when the inventory is empty
var counter = 0
for (var i = 0; i < array_length(global.inv); i++) {
    if global.inv[i][0] != obj_gun_placeholder and global.inv[i][1] != obj_bullet_placeholder{
        counter += 1
        show_debug_message(".")
    }
    show_debug_message(i)
    show_debug_message(global.inv[i])
}
show_debug_message(counter)
if counter == 0{
    var gun = obj_vars.guns[irandom(array_length(obj_vars.guns)-1)]
    var bullet = obj_vars.bullets[irandom(array_length(obj_vars.bullets)-1)]
    global.loadout = [[gun, bullet], [obj_gun_placeholder, obj_bullet_placeholder], [obj_gun_placeholder, obj_bullet_placeholder]]
}
else {
	global.loadout = [[obj_gun_placeholder, obj_bullet_placeholder], [obj_gun_placeholder, obj_bullet_placeholder], [obj_gun_placeholder, obj_bullet_placeholder]]
}
global.scraps = 0