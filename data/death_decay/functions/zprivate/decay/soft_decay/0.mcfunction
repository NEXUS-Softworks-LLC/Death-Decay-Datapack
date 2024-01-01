# get difference between health decay limit and player's current health
scoreboard players operation @s dd.current_max_hp -= healthDecayLimit dd.config

# if difference >= 1, decay
execute if score @s dd.current_max_hp matches 1.. run function death_decay:zprivate/decay/soft_decay/1