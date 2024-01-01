# add 2 to decay stack
scoreboard players operation @s dd.decayed_health += healthDecayPerDeath dd.config

# remove 4 max hp from player
scoreboard players operation @s hp_max -= healthDecayPerDeath dd.config

# set decay time to configured threshold time
scoreboard players operation @s dd.decay_time = decayTimeThreshold dd.config

# tell player their health has changed
title @s actionbar {"text":"Health has decayed!","bold":true,"color":"yellow"}