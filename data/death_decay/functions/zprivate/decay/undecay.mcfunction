# if player has <= decayed health than the configured health per undecay, give the player the remaining decayed health
execute if score @s dd.decayed_health matches 1.. if score @s dd.decayed_health < healthPerUndecay dd.config run function death_decay:zprivate/decay/undecay/soft
# if not, undecay normally
execute if score @s dd.decayed_health matches 1.. if score @s dd.decayed_health >= healthPerUndecay dd.config run function death_decay:zprivate/decay/undecay/normal

# set timer to 0
scoreboard players set @s dd.decay_time 0

# set timer to configured time again if player has more decayed health
execute if score @s dd.decayed_health matches 1.. run scoreboard players operation @s dd.decay_time = decayTimeThreshold dd.config

# tell player their health has changed
execute if score @s dd.decayed_health matches 1.. run title @s actionbar {"text":"Health has partially restored!","bold":true,"color":"dark_green"}
execute if score @s dd.decayed_health matches 0 run title @s actionbar {"text":"Health has fully restored!","bold":true,"color":"green"}