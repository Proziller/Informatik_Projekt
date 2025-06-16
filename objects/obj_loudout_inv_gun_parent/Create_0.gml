being_dragged = false
orgX = x
orgY = y
gun = global.loadout[index][0]
bullet = global.loadout[index][1]
depth = -1000

function swap_slot(slotIndex){
    var sgun = global.inv[slotIndex][0]
    var sbullet = global.inv[slotIndex][1]
    
    global.inv[slotIndex][0] = gun
    global.inv[slotIndex][1] = bullet

    global.loadout[index][0] = sgun
    global.loadout[index][1] = sbullet
    
    if sgun != ""{
        gun = sgun
        bullet = sbullet
    }
}