//selecting the next gun
global.selectedGun += 
1
//looping when the selector reached its end
if global.selectedGun > 2{
    global.selectedGun = 0
}

//switching the gun to match the selected gun
switch_gun(global.selectedGun)