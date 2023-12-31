# subtract 1 from decay stack
execute if score @s dd.decay_stack matches 1.. run scoreboard players operation @s dd.decay_stack -= 1 dd.decay_time

# add 2 max hp to player
scoreboard players set @s hp_max 2

# set timer to 0
scoreboard players set @s dd.decay_time 0

# set timer to 15 minutes again if player has more stacks
execute if score @s dd.decay_stack matches 1.. run scoreboard players set @s dd.decay_time 18000

# tell player their health has changed
execute if score @s dd.decay_stack matches 1.. run title @s actionbar {"text":"Health has partially restored!","bold":true,"color":"dark_green"}
execute if score @s dd.decay_stack matches 0 run title @s actionbar {"text":"Health has fully restored!","bold":true,"color":"green"}