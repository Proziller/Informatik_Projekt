if instance_exists(obj_player){
    var pc = (obj_player.hp / obj_player.maxhp) * 100;
    draw_healthbar(8, 528, 247, 535, pc, $433a60, $a19f7c, $a19f7c, 0, true, false)
}