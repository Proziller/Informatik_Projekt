//when the room starts set the hp to global.hp to keep hp between rooms

//when in home, reset hp
if room == rm_home{
    global.hp = maxhp
    //audio_stop_sound(snd_drive)
}