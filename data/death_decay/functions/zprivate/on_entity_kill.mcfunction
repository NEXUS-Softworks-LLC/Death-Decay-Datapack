advancement revoke @s only death_decay:entity_kill

execute if score @s dd.decayed_health matches 1.. run function death_decay:zprivate/decay/reduce_decay_timer