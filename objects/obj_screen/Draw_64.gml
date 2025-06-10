if room != rm_home{
    draw_self()
    var pc = (obj_player.hp / obj_player.maxhp) * 100
    draw_healthbar(24, 520, 263, 527, pc, $433a60, $a19f7c, $a19f7c, 0, true, false)
    draw_text(300, 520, global.scraps)
}