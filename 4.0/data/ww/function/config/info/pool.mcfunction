# context: @s = player

# 1. go through each ww:memory ROLES
# 2. if the id exists in poolKeys, get the count
# 3. construct the text component and append to array


data modify storage ww:temp configInfoPool set value {}
data modify storage ww:temp roles set from storage ww:memory ROLES
scoreboard players set %poolTotal ww.system 0

function ww:config/info/pool/loop

# loop and show message
tellraw @s {"text":"\n********************\n", "color":"blue","bold":true}
# bads
data remove storage ww:temp configInfoPoolCampaign
execute if data storage ww:temp configInfoPool.bads[0] run \
  data modify storage ww:temp configInfoPoolCampaign set from storage ww:temp configInfoPool.bads
execute if data storage ww:temp configInfoPool.bads[0] run tellraw @s {"text":"<狼人陣營>","color":"red","bold":true}
function ww:config/info/pool/print

# goods
data remove storage ww:temp configInfoPoolCampaign
execute if data storage ww:temp configInfoPool.goods[0] run \
  data modify storage ww:temp configInfoPoolCampaign set from storage ww:temp configInfoPool.goods
execute if data storage ww:temp configInfoPool.goods[0] run tellraw @s {"text":"<人類陣營>","color":"#50d300","bold":true}
function ww:config/info/pool/print

# spirits
data remove storage ww:temp configInfoPoolCampaign
execute if data storage ww:temp configInfoPool.spirits[0] run \
  data modify storage ww:temp configInfoPoolCampaign set from storage ww:temp configInfoPool.spirits
execute if data storage ww:temp configInfoPool.spirits[0] run tellraw @s {"text":"<怨靈陣營>","color":"dark_red","bold":true}
function ww:config/info/pool/print

execute store result score %players ww.var if entity @a[predicate=!ww:narrator]
execute store result score %ai_count ww.var run data get storage ww:memory config.AI_COUNT
scoreboard players operation %sum ww.var = %players ww.var
scoreboard players operation %sum ww.var += %ai_count ww.var
execute if score %ai_count ww.var matches 1.. run tellraw @s [ \
  {"text":"\n總人數: ","color":"white","bold":false}, \
  {"score":{"name":"%players","objective":"ww.var"},"color":"green","bold":true}, \
  {"text":"名玩家 + ","color":"white","bold":false}, \
  {"score":{"name":"%ai_count","objective":"ww.var"},"color":"green","bold":true}, \
  {"text":"名AI = ","color":"white","bold":false}, \
  {"score":{"name":"%sum","objective":"ww.var"},"color":"green","bold":true}, \
  {"text":"名","color":"white","bold":false} \
]

execute unless score %ai_count ww.var matches 1.. run tellraw @s [ \
  {"text":"\n總人數: ","color":"white","bold":false}, \
  {"score":{"name":"%players","objective":"ww.var"},"color":"green","bold":true}, \
  {"text":"名玩家","color":"white","bold":false} \
]

# sum of pool counts
tellraw @s [ \
  {"text":"\n職業總數: ","color":"white","bold":false}, \
  {"score":{"name":"%poolTotal","objective":"ww.system"},"color":"green","bold":true}, \
  {"text":"名","color":"white","bold":false} \
]

tellraw @s {"text":"\n********************\n", "color":"blue","bold":true}