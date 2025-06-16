if room != rm_home && room != rm_computer{
    draw_self()
    var pc = (global.hp / obj_player.maxhp) * 100
    draw_healthbar(24, 520, 263, 527, pc, $433a60, $a19f7c, $a19f7c, 0, true, false)
    draw_text_ext_transformed(300, 526, global.scraps, 0, 10000000, 2, 2, 0)
}