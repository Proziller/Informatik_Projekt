if hp < 1 && !dying{
    sprite_index = spr_explosion
    dying = true
}
if hp > 0{
    body.x = x
    head.x = x + body.head_pos[0]
    armL.x = x - body.arms_pos[0]
    armR.x = x + body.arms_pos[0]
    legL.x = x - body.legs_pos[0]
    legR.x = x + body.legs_pos[0]
    
    body.y = y
    head.y = y + body.head_pos[1]
    armL.y = y + body.arms_pos[1]
    armR.y = y + body.arms_pos[1]
    legL.y = y + body.legs_pos[1]
    legR.y = y + body.legs_pos[1]
}