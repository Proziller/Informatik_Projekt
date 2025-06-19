//draw self and a healthbar on top of the enemy
draw_self()
draw_rectangle_color(x-17, y-27, x+17, y-18, $32313b, $32313b, $32313b, $32313b, false)
draw_healthbar(x-15, y-25, x+15, y-20, (hp / maxhp)*100, $ff5dcc, $8dd894, $8dd894, 0, true, false)