fight = 0
enemies = 5
enemies_alive = enemies + 1
blockades = 21
guns = [obj_gun_auto, obj_gun_shotgun, obj_gun_sinper]
guns_enemy = [obj_gun_auto_enemy, obj_gun_shotgun_enemy, obj_gun_sinper_enemy]
bullets = [obj_bullet_arial, obj_bullet_bleeding, obj_bullet_homing]
audio_play_sound(snd_fight_intro,10,false)
alarm[0] = 15*60