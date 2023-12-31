tellraw @a {"text":"decay function","color":"gray"}

# add 2 to decay stack
scoreboard players operation @s dd.decay_stack += 2 dd.decay_time

# remove 4 max hp from player

# if return health is not scheduled, set normally
execute if score @s cw_hp_old matches 0 run scoreboard players set @s hp_max -4
# if return health is scheduled, deduct health from return health value
execute if score @s cw_hp_old matches 1.. run scoreboard players operation @s cw_hp_old -= 4 dd.decay_time

# set decay time to 15 minutes
scoreboard players set @s dd.decay_time 18000

# tell player their health has changed
title @s actionbar {"text":"Health has decayed!","bold":true,"color":"yellow"}