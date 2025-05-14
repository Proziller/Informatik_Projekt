if instance_exists(obj_player){
    var pc = (obj_player.hp / obj_player.maxhp) * 100;
    draw_healthbar(8, 528, 247, 535, pc, c_black, c_red, c_lime, 0, true, false)
}