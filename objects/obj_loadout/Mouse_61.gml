//selecting the previous gun
global.selectedGun -= 1

//looping when the selector reached its end
if global.selectedGun < 0{
    global.selectedGun = 2
}

//switching the gun to match the selected gun
switch_gun(global.selectedGun)