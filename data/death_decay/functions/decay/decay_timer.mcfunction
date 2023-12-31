scoreboard players operation @s dd.decay_time -= 1 dd.decay_time

execute if score @s dd.decay_time matches ..0 run function death_decay:decay/undecay