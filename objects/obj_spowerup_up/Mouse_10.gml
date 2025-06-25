//making the tooltip show the powerups information
switch pwerup {
    case "bullet damage": 
        global.hover = [["powerup: bullet damage", "the bullets do more damage"], ["", ""]]
    break
    
    case "bullet distance":
        global.hover = [["powerup: bullet distance", "the bullets fly further"], ["", ""]]
    break
    
    case "bullet size":
        global.hover = [["powerup: bullet size", "you shoot bigger bullets"], ["", ""]]
    break
    
    case "bullet speed": 
        global.hover = [["powerup: bullet speed", ""], ["", ""]]
    break
    
    case "gun spread":
        global.hover = [["powerup: bullet spread", "the spread of the gun is reduced"], ["", ""]]
    break
    
    case "gun reload": 
        global.hover = [["powerup: gun reload", "the gun fires faster"], ["", ""]]
    break
    
    case "player speed": 
        global.hover = [["powerup: player speed", "makes the player faster"], ["", ""]]
    break
}