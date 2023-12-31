advancement revoke @s only death_decay:entity_kill

execute if score @s dd.decay_stack matches 1.. run function death_decay:decay/reduce_decay_timer