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

pops = [snd_pop_01, snd_pop_02, snd_pop_03, snd_pop_04, snd_pop_05, snd_pop_06, snd_pop_07, snd_pop_08, snd_pop_09, snd_pop_10]
animationFrame = 0