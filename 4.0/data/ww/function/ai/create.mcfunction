# context: server
# scores: %AI_COUNTER ww.system
# storage: ww:memory aiSetupLocation

data modify storage ww:temp aiSetupInput set value {}
data modify storage ww:temp aiSetupInput.pos set from storage ww:memory aiSetupLocation
function ww:ai/_create with storage ww:temp aiSetupInput

execute store result score %aiCounterBossbarValue ww.var run bossbar get ww:ai_counter value
execute store result bossbar ww:ai_counter value run scoreboard players add %aiCounterBossbarValue ww.var 1

scoreboard players remove %AI_COUNTER ww.system 1
execute if score %AI_COUNTER ww.system matches 1.. run schedule function ww:ai/create 1t append

execute if score %AI_COUNTER ww.system matches ..0 run bossbar set ww:ai_counter visible false
execute if score %AI_COUNTER ww.system matches ..0 run schedule function ww:game/init 1t replace