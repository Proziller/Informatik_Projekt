//draw the tooltips
draw_self()
if global.hover !=noone && array_length(global.hover[0]) == 2 && array_length(global.hover[1]) == 2{
    draw_text_ext_transformed(196, 114, global.hover[0][0], 16, 40, 0.5, 0.5, 0)
    draw_text_ext_transformed(246, 114, global.hover[0][1], 16, 140, 0.5, 0.5, 0)
    draw_text_ext_transformed(196, 146, global.hover[1][0], 16, 40, 0.5, 0.5, 0)
    draw_text_ext_transformed(246, 146, global.hover[1][1], 16, 140, 0.5, 0.5, 0)
}