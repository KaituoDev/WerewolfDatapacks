# context: @s = player | villager
# adds N% of remaining time to %

scoreboard players set %ai_can_ff ww.system 1

clear @s *[minecraft:custom_data~{fast_forward:true}]

execute unless predicate ww:is_night store result score %maxTime ww.var run \
  data get storage ww:memory config.MAX_DAY_TICKS
execute if predicate ww:is_night store result score %maxTime ww.var run \
  data get storage ww:memory config.MAX_NIGHT_TICKS

scoreboard players operation %timeSkip ww.var = %maxTime ww.var

# scoreboard players operation %timeSkip ww.var -= %time ww.system

# players hold N% of max time
# and only leave 5 seconds margin

# divide remaining time left / total alive players
scoreboard players operation %divider ww.var = %alives ww.system
# scoreboard players set %divider ww.var 2
scoreboard players operation %timeSkip ww.var /= %divider ww.var

# warning message
scoreboard players operation %remainingTime ww.var = %maxTime ww.var
scoreboard players operation %remainingTime ww.var -= %time ww.system
execute if score %remainingTime ww.var matches ..200 run return run \
  function ww:chat/_dm {type: 'warn', message: '剩余时间不足以快进'}

execute if score %remainingTime ww.var < %timeSkip ww.var run \
  scoreboard players operation %timeSkip ww.var = %remainingTime ww.var

#execute if score %timeSkip ww.var matches ..100 run return run function ww:chat/_dm {type: 'warn', message: '剩余时间不足以快进'}
scoreboard players operation %time ww.var = %time ww.system
scoreboard players operation %time ww.var += %timeSkip ww.var
execute if score %time ww.var > %maxTime ww.var run scoreboard players operation %time ww.var = %maxTime ww.var
execute if score %time ww.var = %maxTime ww.var run scoreboard players remove %timeSkip ww.var 200
execute if score %time ww.var = %maxTime ww.var run scoreboard players remove %time ww.var 200

# commit set time
scoreboard players operation %time ww.system = %time ww.var

# broadcast
data modify storage ww:temp broadcastInput set value {}
execute store result storage ww:temp broadcastInput.seconds int 0.05 run scoreboard players get %timeSkip ww.var

# obtain the first floating point
execute store result score %quotientTicks ww.var run data get storage ww:temp broadcastInput.seconds 20
scoreboard players operation %timeSkip ww.var -= %quotientTicks ww.var
execute store result storage ww:temp broadcastInput.ms int 0.5 run scoreboard players get %timeSkip ww.var

function ww:time/fast_forward/_broadcast with storage ww:temp broadcastInput