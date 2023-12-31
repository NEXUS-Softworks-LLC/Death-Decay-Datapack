# get difference between 8 and player's current health
scoreboard players operation @s dd.current_max_hp -= 8 dd.decay_time

tellraw @s ["",{"text":"new cmp : ","color":"white"},{"score":{"name":"@s","objective":"dd.current_max_hp"}}]

# if difference >= 1, decay
execute if score @s dd.current_max_hp matches 1.. run function death_decay:decay/soft_decay_1