//if not exploding
if !exploded{
    //calculating the speed to be an exponential function based on the distance to the player
    enemySpeed = 5 * power(0.99, distance_to_object(destination))
    //image speed matching the speed
    image_speed = enemySpeed * 2
    event_inherited()
}