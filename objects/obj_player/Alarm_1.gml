//repeat 10 times hp -= 1 in 30 step intevals else reset the bleed timer
if bleed > 0{
    hp -= 0.25
    alarm[1] = 30
    bleed -= 1
}
else {
	bleed = 10
}