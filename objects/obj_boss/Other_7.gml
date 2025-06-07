//delete all parts when dying
if sprite_index == spr_explosion{
    instance_destroy()
    instance_destroy(body)
    instance_destroy(armL)
    instance_destroy(armR)
    instance_destroy(legL)
    instance_destroy(legR)
    instance_destroy(head)
}