scoreboard objectives add dd.decayed_health dummy
scoreboard objectives add dd.decay_time dummy
scoreboard objectives add dd.current_max_hp dummy
scoreboard objectives add dd.deaths deathCount
scoreboard objectives add dd.config dummy

scoreboard players set 1 dd.decay_time 1

# set default settings
function death_decay:set_default_settings

data merge storage dd:data {PackVersion:"0.1"}