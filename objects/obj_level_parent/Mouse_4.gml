if level < 10 && global.scraps >= round(10*power(1.2, level)){
    level += 1
    global.scraps -= round(10*power(1.2, level))
    array_push(global.ppowerupsActive, name)
    global.levelHover = string(level)
}