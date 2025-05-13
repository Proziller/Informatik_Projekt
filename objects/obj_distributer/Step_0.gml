if new_game{
    for (var i = 0; i < obj_vars.blockades; i++) {
    	x = round((random(room_width)-32)/32)*32
    	y = round((random(room_height)-32)/32)*32
        
        instance_create_depth(x, y, 1, obj_blockade)
    }
    
    for (var i = 0; i < obj_vars.enemies; i++) {
    	x = round((random(room_width)-32)/32)*32
    	y = round((random(room_height)-32)/32)*32
        
        instance_create_depth(x, y, 1, obj_enemy)
    }
    
    new_game = false
}