orgX = x
orgY = y
being_dragged = false

function swap_slot (slotIntex) {
    var sgun = global.loadout[slotIntex][0]
    var sbullet = global.loadout[slotIntex][1]
    
    global.loadout[slotIntex][0] = global.inv[index][0]
    global.loadout[slotIntex][1] = global.inv[index][1]
    
    global.inv[index][0] = sgun
    global.inv[index][1] = sbullet
}