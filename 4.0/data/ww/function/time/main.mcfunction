# context: server
# reference: ww:game/main, runs every second

scoreboard players add %time ww.system 1

# handle in game daylight cycle with time set
# (12000 / max time) * %time + 12000 * (is_night)

execute store result score %maxTimeMorning ww.var run data get storage ww:memory config.MAX_DAY_TICKS
execute store result score %maxTimeNight ww.var run data get storage ww:memory config.MAX_NIGHT_TICKS

execute unless predicate ww:is_night run scoreboard players operation %currentMaxTime ww.var = %maxTimeMorning ww.var
execute if predicate ww:is_night run scoreboard players operation %currentMaxTime ww.var = %maxTimeNight ww.var

data modify storage ww:temp setTimeInput set value {}
scoreboard players set %temp ww.var 12000
scoreboard players operation %temp ww.var /= %currentMaxTime ww.var
scoreboard players operation %temp ww.var *= %time ww.system
scoreboard players operation %remainingTime ww.system = %currentMaxTime ww.var
scoreboard players operation %remainingTime ww.system -= %time ww.system
execute if predicate ww:is_night run scoreboard players add %temp ww.var 12000
execute store result storage ww:temp setTimeInput.ticks int 1 run scoreboard players get %temp ww.var

function ww:time/_set_time with storage ww:temp setTimeInput

# returns 1 if masochist ending
execute unless predicate ww:is_night if score %time ww.system >= %maxTimeMorning ww.var run return run function ww:time/turn_night
execute if predicate ww:is_night if score %time ww.system >= %maxTimeNight ww.var run return run function ww:time/turn_morning
