var scraps = real(global.scraps)
scraps += irandom_range(power(1.25, global.round) * 3, power(1.35, global.round) * 3)
global.scraps = string(scraps)