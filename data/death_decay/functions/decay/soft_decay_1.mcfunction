# remove (remainder) max hp from player

# if return health is not scheduled, set normally
execute if score @s cw_hp_old matches 0 run scoreboard players operation @s hp_max -= @s dd.current_max_hp
# if return health is scheduled, deduct health from return health value
execute if score @s cw_hp_old matches 1.. run scoreboard players operation @s cw_hp_old -= @s dd.current_max_hp

# add (remainder / 2) to decay stack (can be zero if health is an odd number)
scoreboard players operation @s dd.current_max_hp /= 2 dd.decay_time

scoreboard players operation @s dd.decay_stack += @s dd.current_max_hp

# set decay time to 15 minutes
execute if score @s dd.decay_stack matches 1.. run scoreboard players set @s dd.decay_time 18000

# tell player their health has changed
title @s actionbar {"text":"Health has decayed!","bold":true,"color":"yellow"}