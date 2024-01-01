# remove (remainder) max hp from player
scoreboard players operation @s hp_max -= @s dd.current_max_hp
# add (remainder) to decayed health
scoreboard players operation @s dd.decayed_health += @s dd.current_max_hp

# set decay time to configured threshold time
execute if score @s dd.decayed_health matches 1.. run scoreboard players operation @s dd.decay_time = decayTimeThreshold dd.config

# tell player their health has changed
title @s actionbar {"text":"Health has decayed!","bold":true,"color":"yellow"}