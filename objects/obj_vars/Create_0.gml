//creating the var, that holds the ammount of enemies and the var, that holds the ammount of alive enemies
enemies = 0
enemiesAlive = 0
//determening the ammount of blockades in a arena
blockades = irandom_range(30,40)

//storing all guns, there are, in an array
guns = [obj_gun_auto, obj_gun_shotgun, obj_gun_sinper, obj_gun_big, obj_gun_circle, obj_gun_superfast, obj_gun_parrable, obj_gun_semiauto, obj_gun_sprayer]
//storing all bullets, there are, in an array
bullets = [obj_bullet_confusion,obj_bullet_piercing, obj_bullet_arial, obj_bullet_bleeding, obj_bullet_homing, obj_bullet_freezing, obj_bullet_stun, obj_bullet_big, obj_bullet_calorene_dense]