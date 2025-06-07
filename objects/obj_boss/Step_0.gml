//make all parts explode
if hp < 1 && !dying{
    sprite_index = spr_explosion
    head.sprite_index = spr_explosion
    armL.sprite_index = spr_explosion
    armR.sprite_index = spr_explosion
    legL.sprite_index = spr_explosion
    legR.sprite_index = spr_explosion
    dying = true
}

//make all parts move
if hp > 0{
    body.x = x
    head.x = x + body.headPos[0]
    armL.x = x - body.armPos[0]
    armR.x = x + body.armPos[0]
    legL.x = x - body.legPos[0]
    legR.x = x + body.legPos[0]
    
    body.y = y
    head.y = y + body.headPos[1]
    armL.y = y + body.armPos[1]
    armR.y = y + body.armPos[1]
    legL.y = y + body.legPos[1]
    legR.y = y + body.legPos[1]
}