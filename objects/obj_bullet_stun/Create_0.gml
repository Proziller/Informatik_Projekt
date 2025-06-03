event_inherited()

bullet_hit_ability = function(target_hit) {
    //activating stun and the stun cooldown if the targets stun cooldown isn't active
    if !target_hit.stunCooldown{
        target_hit.stunned = true
        target_hit.stunCooldown = true
        target_hit.alarm[4] = 120
        target_hit.alarm[7] = 180
    }
}