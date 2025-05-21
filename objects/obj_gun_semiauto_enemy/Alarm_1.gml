if peng_peng > 0{
    audio_play_sound(snd_gun_auto, 1, false)
    cooldown = 1
    var created_bullet = instance_create_depth(x, y, -9, bullet)
    
    with created_bullet{
        dmg *= 0.5
        direction += spread(3)
        speed = 10 
        image_angle = direction
        alarm[0] = 35
        hitter = obj_enemy_parent
    }
    peng_peng -= 1
    alarm[1] = 7
}
else {
	alarm[0] = 15
}