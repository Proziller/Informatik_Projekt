var blockades = obj_vars.blockades
if room == rm_arena_boss{
    blockades = 5
}
for (var i = 0; i < blockades; i++) {
    x = round(random(room_width/32))*32
    y = round(random(room_height/32))*32
    
    while place_meeting(x, y, nonos){
        x = round(random(room_width/32))*32
        y = round(random(room_height/32))*32
    }
    instance_create_depth(x, y, 1, obj_blockade)
}

if room != rm_arena_boss{
    var enemies = round(10-power(0.9, global.fight - 22))
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
}

new_game = false
visible = false