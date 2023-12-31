scoreboard objectives add dd.decay_stack dummy
scoreboard objectives add dd.decay_time dummy
scoreboard objectives add dd.current_max_hp dummy
scoreboard objectives add dd.deaths deathCount

scoreboard players set 1 dd.decay_time 1
scoreboard players set 2 dd.decay_time 2
scoreboard players set -1 dd.decay_time -1
scoreboard players set 4 dd.decay_time 4
scoreboard players set 8 dd.decay_time 8
scoreboard players set 1800 dd.decay_time 1800