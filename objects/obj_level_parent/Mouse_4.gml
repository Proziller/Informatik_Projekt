if level < 10 && global.scraps > 9{
    level += 1
    global.scraps -= 10
    array_push(global.ppowerupsActive, name)
    global.levelHover = string(level)
}