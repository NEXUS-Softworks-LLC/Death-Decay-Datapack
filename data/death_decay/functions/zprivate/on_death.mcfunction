# reset scoreboard
scoreboard players reset @s dd.deaths

# initialize decayed health score if it is not set
execute unless score @s dd.decayed_health = @s dd.decayed_health run scoreboard players set @s dd.decayed_health 0
# cleanse unsupported config values
execute unless score healthDecayPerDeath dd.config matches 0.. run scoreboard players set healthDecayPerDeath dd.config 0
execute unless score healthPerUndecay dd.config matches 0.. run scoreboard players set healthPerUndecay dd.config 0

# get player's current max health
execute store result score @s dd.current_max_hp run attribute @s generic.max_health base get

# calculate health limit
scoreboard players operation healthDecayLimitRange dd.config = healthDecayLimit dd.config
scoreboard players operation healthDecayLimitRange dd.config += healthDecayPerDeath dd.config

# if max health is <= limit, soft decay
execute if score @s dd.current_max_hp <= healthDecayLimitRange dd.config run function death_decay:zprivate/decay/soft_decay/0
# if max health is >= limit, decay
execute if score @s dd.current_max_hp >= healthDecayLimitRange dd.config run function death_decay:zprivate/decay/decay

# if player has decayed health, reset decay timer to configured time threshold
execute if score @s dd.decayed_health matches 1.. run scoreboard players operation @s dd.decay_time = decayTimeThreshold dd.config