arms = [spr_boss_arm_spray, spr_boss_arm_circle, spr_boss_arm_wall_horizontal, spr_boss_arm_homing, spr_boss_arm_wall_vertical]
arm = arms[irandom(array_length(arms)-1)]
sprite_index = arm
cooldown = true
alarm[0] = 120
wallSide = "left"