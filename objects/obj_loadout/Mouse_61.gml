//selecting the previous gun
global.selected_gun -= 1

//looping when the selector reached its end
if global.selected_gun < 0{
    global.selected_gun = 2
}

//switching the gun to match the selected gun
switch_gun(global.selected_gun)