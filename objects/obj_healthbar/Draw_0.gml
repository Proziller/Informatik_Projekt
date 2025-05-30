if room == rm_arena or room == rm_arena_boss{
    var pc = (obj_player.hp / obj_player.maxhp) * 100;
    draw_healthbar(24, 520, 263, 527, pc, $433a60, $a19f7c, $a19f7c, 0, true, false)
}
if room == rm_traider {
    var pc = (obj_player.hp / obj_player.maxhp) * 100;
    draw_healthbar(12, 260, 131, 263, pc, $433a60, $a19f7c, $a19f7c, 0, true, false)
}