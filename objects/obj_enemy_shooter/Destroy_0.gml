event_inherited()

var scraps = real(global.scraps)
scraps += irandom_range(power(1.25, global.round), power(1.35, global.round))
global.scraps = string(scraps)