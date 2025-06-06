//storing the amount of blockades in blockades
var blockades = obj_vars.blockades

//if in rm_arena_boss, limit the blockades to 25
if room == rm_arena_boss{
    blockades = 25
}

//repeat for the amount of blockades
repeat (blockades) {
    
    //go to random place of the grid
    x = irandom(room_width/32)*32
    y = irandom(room_height/32)*32
    
    //repeating until the place is allowed to place a blockade on
    while place_meeting(x, y, inaccessablePlaces){
        x = round(random(room_width/32))*32
        y = round(random(room_height/32))*32
    }
    
    //creating the blockade
    instance_create_depth(x, y, 2, obj_blockade)
}

//don't spawn enemies in a boss room
if room != rm_arena_boss{
    
    //storing the amount of enemies in enemies and making the a
    var enemies = global.round
    obj_vars.enemiesAlive = enemies + 1
    
    repeat (enemies) {
        
        //go to random place of the grid
        x = irandom(room_width/32)*32
        y = irandom(room_height/32)*32
        
        //repeating until the place is allowed to place a blockade on
        while place_meeting(x, y, inaccessablePlaces) {
            x = round(random_range(32, room_width - 64))
            y = round(random_range(32, room_height - 64))
        }
        
        //choosing the enemy
        var enemy = obj_enemy_parent.enemies[irandom(array_length(obj_enemy_parent.enemies) - 1)]
        
        //creating the enemy
        instance_create_depth(x, y, 1, enemy)
    }
}

visible = false