# context: server
# scores: %time ww.system, %days ww.system
# storage: ww:memory GameBarTexts.time

execute unless predicate ww:is_night store result bossbar ww:game_status max run data get storage ww:memory config.MAX_DAY_TICKS
execute if predicate ww:is_night store result bossbar ww:game_status max run data get storage ww:memory config.MAX_NIGHT_TICKS

execute store result score %timeLeft ww.var run bossbar get ww:game_status max
execute store result bossbar ww:game_status value run scoreboard players operation %timeLeft ww.var -= %time ww.system
scoreboard players set %temp ww.var 20
scoreboard players operation %timeLeft ww.var /= %temp ww.var

execute unless predicate ww:is_night run data modify storage ww:memory GameBarTexts.time set value \
  '[{"text":"☀ ","color":"yellow","bold":true},{"score":{"name":"%timeLeft","objective":"ww.var"},"bold":true,"color":"gold"}," "]'

execute if predicate ww:is_night run data modify storage ww:memory GameBarTexts.time set value \
  '[{"text":"☾ ","color":"white","bold":true},{"score":{"name":"%timeLeft","objective":"ww.var"},"bold":true,"color":"gold"}," "]'

execute if predicate ww:is_night if score %isBloodMoon ww.system matches 1 run data modify storage ww:memory GameBarTexts.time set value \
  '[{"text":"☾ 血月降临 ","color":"red","bold":true},{"score":{"name":"%timeLeft","objective":"ww.var"},"bold":true,"color":"gold"}," "]'