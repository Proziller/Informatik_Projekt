event_inherited()

//setting up the piercing
piercing = true

bullet_hit_ability = function(hit) {
    //after hitting an enemy setting piercing to false
    if piercings > 0 {
        piercing = false
    }
    piercings += 1
}