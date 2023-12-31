execute as @a[scores={dd.decay_stack=1..}] run function death_decay:decay/decay_timer
execute as @a[scores={dd.deaths=1..}] run function death_decay:on_death