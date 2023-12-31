# reset scoreboard
scoreboard players reset @s dd.deaths

# initialize score if it is not set
execute unless score @s dd.decay_stack = @s dd.decay_stack run scoreboard players set @s dd.decay_stack 0

# get player's current max health
execute store result score @s dd.current_max_hp run attribute @s generic.max_health base get

tellraw @s ["",{"text":"base cmp : ","color":"white"},{"score":{"name":"@s","objective":"dd.current_max_hp"}}]

# if max health is <= 12, soft decay
execute if score @s dd.current_max_hp matches ..11 run function death_decay:decay/soft_decay
# if max health is >= 12, decay
execute if score @s dd.current_max_hp matches 12.. run function death_decay:decay/decay

# if player has decay stacks, reset decay timer
execute if score @s dd.decay_stack matches 1.. run scoreboard players set @s dd.decay_time 18000