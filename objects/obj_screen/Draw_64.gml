if room == rm_home{
    draw_text_ext_transformed(16, 24, "CONTROLS: wasd to move                 right click to shoot                    left click to dash                    drag any gun into a slot to put it there  scroll / 123: switch weapons", 20, 300, 1, 1, 0)
    draw_text_ext_transformed(336, 24, "MANUEL: every permanent powerups on the computer costs 10 scraps         the scraps you get from killing enemies get shown at the bottom                you get singel powerups at the traider by clicking on them", 20, 300, 1, 1, 0)
}

if room != rm_home && room != rm_computer{
    draw_self()
    var pc = (global.hp / obj_player.maxhp) * 100
    draw_healthbar(24, 520, 263, 527, pc, $433a60, $a19f7c, $a19f7c, 0, true, false)
    draw_text_ext_transformed(300, 526, global.scraps, 0, 10000000, 2, 2, 0)
}