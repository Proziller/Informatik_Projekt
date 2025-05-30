if hp < 1 && !dying{
    sprite_index = spr_explosion
    dying = true
    instance_destroy(armL)
    instance_destroy(armR)
    instance_destroy(legL)
    instance_destroy(legR)
    instance_destroy(head)
}