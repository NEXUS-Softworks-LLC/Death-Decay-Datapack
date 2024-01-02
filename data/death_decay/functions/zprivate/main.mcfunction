execute as @a[scores={dd.decayed_health=1..}] run function death_decay:zprivate/decay/decay_timer
execute as @a[scores={dd.deaths=1..}] run function death_decay:zprivate/on_death