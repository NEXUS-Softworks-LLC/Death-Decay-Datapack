# get decay stack health value
scoreboard players operation #temp dd.decay_stack = @s dd.decay_stack
scoreboard players operation #temp dd.decay_stack *= 2 dd.decay_time

# add max health
scoreboard players operation @s hp_max = #temp dd.decay_stack

# reset stacks and timer
scoreboard players set @s dd.decay_stack 0
scoreboard players set @s dd.decay_time 0