//creating an array with all kinds of enemies
enemies = [obj_enemy_creeper, obj_enemy_shooter]

//setting up speed
enemySpeedOriginal = 1
enemySpeed = enemySpeedOriginal

//setting up effects
freezing = false
dying = false
bleed = 5
stunned = false
stunCooldown = false
confused = false

//setting up pathfinding
alarm[0] = 90
path = path_add()
destination = obj_player