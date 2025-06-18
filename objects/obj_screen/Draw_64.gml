if room == rm_home{
    //draw the controls
    draw_text_ext_transformed(16, 24, ")==CONTROLS:==", 20, 425 , 1.5, 1.5, 0)
    draw_text_ext_transformed(16, 48, "w,a,s,d: move", 20, 425 , 1, 1, 0)
    draw_text_ext_transformed(16, 72, "scroll,1, 2, 3: switch loadout slot", 20, 425 , 1, 1, 0)
    draw_text_ext_transformed(16, 96, "left click: shoot weapon", 20, 425 , 1, 1, 0)
    draw_text_ext_transformed(16, 124, "right click: dash", 20, 425 , 1, 1, 0)
    
    //draw the manuel
    draw_text_ext_transformed(340, 24, "==MANUEL:==", 20, 425 , 1, 1, 0)
    draw_text_ext_transformed(340, 48, "drag guns from the inventory or the displays in the", 20, 700 , 0.75, 0.75, 0)
    draw_text_ext_transformed(340, 64, "traider to the loadout and reverse", 20, 425 , 0.75, 0.75, 0)
    draw_text_ext_transformed(340, 80, "yor scraps collected form killing enemies shows on the", 20, 425 , 0.75, 0.75, 0)
    draw_text_ext_transformed(340, 96, "bottom", 20, 425 , 0.75, 0.75, 0)
    draw_text_ext_transformed(340, 112, "every permanent powerup on the computer costs 10", 20, 425 , 0.75, 0.75, 0)
    draw_text_ext_transformed(340, 128, "scraps", 20, 425 , 0.75, 0.75, 0)
    draw_text_ext_transformed(340, 144, "activate powerups in the traider by clicking on them", 20, 425 , 0.75, 0.75, 0)
}
//draw a healthbar and the scrap counter
if room != rm_home && room != rm_computer{
    draw_self()
    var pc = (global.hp / obj_player.maxhp) * 100
    draw_healthbar(24, 520, 263, 527, pc, $433a60, $a19f7c, $a19f7c, 0, true, false)
    draw_text_ext_transformed(300, 526, global.scraps, 0, 10000000, 2, 2, 0)
}