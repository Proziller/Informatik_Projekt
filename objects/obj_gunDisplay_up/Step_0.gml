//moving the bullet display 
obj_gunDisplay_bullet_up.x = x - 6
obj_gunDisplay_bullet_up.y = y - 15

//making the bullets sprite match the bullet
obj_gunDisplay_bullet_up.sprite_index = bullet_spr

//making the bullet be drawn on top of the gun
obj_gunDisplay_bullet_down.depth = depth - 5