event_inherited()

//setting up the body and hp
body = instance_create_depth(x,y,depth,obj_boss_body)
body.visible = false
sprite_index = body.sprite_index
maxhp = body.hp
hp = maxhp

//setting up the rest of the body
head = instance_create_depth(x+body.headPos[0],y+body.headPos[1],depth+1,obj_boss_head)

armL = instance_create_depth(x-body.armPos[0],y+body.armPos[1],depth-1,obj_boss_arm)

armR = instance_create_depth(x+body.armPos[0],y+body.armPos[1],depth-1,obj_boss_arm)
armR.image_xscale = -1

leg = instance_create_depth(x-body.legPos[0],y+body.legPos[1],depth-1,obj_boss_leg)
leg.visible = false

legL = instance_create_depth(x-body.legPos[0],y+body.legPos[1],depth-1,leg.object_index)

legR = instance_create_depth(x+body.legPos[0],y+body.legPos[1],depth-1,leg.object_index)
legR.image_xscale = -1