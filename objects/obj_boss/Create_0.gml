event_inherited()

body = instance_create_depth(x,y,depth,obj_boss_body)
body.visible = false
sprite_index = body.sprite_index
maxhp = body.hp
hp = maxhp
head = instance_create_depth(x+body.head_pos[0],y+body.head_pos[1],depth-1,obj_boss_head)
armL = instance_create_depth(x-body.arms_pos[0],y+body.arms_pos[1],depth-1,obj_boss_arm)
armR = instance_create_depth(x+body.arms_pos[0],y+body.arms_pos[1],depth-1,obj_boss_arm)
armR.image_xscale = -1
legL = instance_create_depth(x-body.legs_pos[0],y+body.legs_pos[1],depth-1,obj_boss_leg)
legR = instance_create_depth(x+body.legs_pos[0],y+body.legs_pos[1],depth-1,obj_boss_leg)
legR.image_xscale = -1