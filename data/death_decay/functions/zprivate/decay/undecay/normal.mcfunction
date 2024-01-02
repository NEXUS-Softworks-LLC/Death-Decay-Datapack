# subtract configured undecay health from decayed health
scoreboard players operation @s dd.decayed_health -= healthPerUndecay dd.config

# add configured undecay health to player
scoreboard players operation @s hp_max += healthPerUndecay dd.config