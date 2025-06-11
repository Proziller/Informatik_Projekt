draw_self()
if global.hover !=noone && array_length(global.hover[0]) == 2 && array_length(global.hover[1]) == 2{
    draw_text_ext_transformed(196, 110, global.hover[0][0], 8, 40, 1, 1, 0)
    draw_text_ext_transformed(246, 110, global.hover[0][1], 8, 70, 1, 1, 0)
    draw_text_ext_transformed(196, 142, global.hover[1][0], 8, 40, 1, 1, 0)
    draw_text_ext_transformed(246, 142, global.hover[1][1], 8, 140, 0.5, 0.5, 0)
}