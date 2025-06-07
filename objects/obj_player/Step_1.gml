//on death
if hp < 1{
    //deleting all bodyparts
    instance_destroy()
    instance_destroy(body)
    instance_destroy(grabber)
    instance_destroy(wheels)
    instance_destroy(gun)
}