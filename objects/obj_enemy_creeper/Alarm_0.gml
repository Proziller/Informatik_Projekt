sped = 5 * power(0.99, distance_to_object(obj_player)) * speedy
if !exploded{
    event_inherited();
}