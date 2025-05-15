if new_game{
    for (var i = 0; i < obj_vars.blockades; i++) {
    	x = round(random(room_width/32))*32
    	y = round(random(room_height/32))*32
        
        while place_meeting(x, y, nonos){
        	x = round(random(room_width/32))*32
        	y = round(random(room_height/32))*32
        }
        instance_create_depth(x, y, 1, obj_blockade)
        show_debug_message(i)
    }
    
    for (var i = 0; i < obj_vars.enemies; i++) {
    	x = round(random_range(32, room_width - 64))
    	y = round(random_range(32, room_height - 64))
        
        while place_meeting(x, y, nonos) {
        	x = round(random_range(32, room_width - 64))
        	y = round(random_range(32, room_height - 64))
        }
        instance_create_depth(x, y, 1, obj_enemy_creeper)
        show_debug_message(i)
    }
    
    new_game = false
    visible = false
}