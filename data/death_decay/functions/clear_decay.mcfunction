# add max health
scoreboard players operation @s hp_max = @s dd.decayed_health

# reset decayed health and timer
scoreboard players set @s dd.decayed_health 0
scoreboard players set @s dd.decay_time 0