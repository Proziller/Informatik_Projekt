for (var i = 0; i < obj_vars.blockades; i++) {
    x = round(random(room_width/32))*32
    y = round(random(room_height/32))*32
    
    while place_meeting(x, y, nonos){
        x = round(random(room_width/32))*32
        y = round(random(room_height/32))*32
    }
    instance_create_depth(x, y, 1, obj_blockade)
}

var enemies = round(global.fight * 0.5)
obj_vars.enemies_alive = enemies + 1
for (var i = 0; i < enemies; i++) {
    x = round(random_range(32, room_width - 64))
    y = round(random_range(32, room_height - 64))
    
    while place_meeting(x, y, nonos) {
        x = round(random_range(32, room_width - 64))
        y = round(random_range(32, room_height - 64))
    }
    
    var max_index = array_length(obj_enemy_parent.enemies) - 1
    var index = irandom(max_index)
    var enemy = obj_enemy_parent.enemies[index]
    
    instance_create_depth(x, y, 1, enemy)
}

new_game = false
visible = false