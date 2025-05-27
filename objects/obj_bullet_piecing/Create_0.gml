event_inherited();
piecings = 0
piecing = true
bullet_hit_ability = function(hit) {
    piecings += 1
    if piecings > 1 {
        piecing = false
    }
}