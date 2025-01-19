# context: server

execute if score %aliveNPC ww.system matches 0 run return fail

# prints a list of AI names, click to teleport
scoreboard players enable @a[predicate=!ww:alive] ww.navigateToAI

tellraw @a[predicate=!ww:alive] [{"text":"\n傳送至 AI 位置:","color":"gold","bold": true}]

data modify storage ww:temp joinStringInput set value {delimiter: ','}
data modify storage ww:temp joinStringInput.strings set value []
execute as @e[predicate=ww:alive,type=villager] run function ww:narrator/navigate/construct

function ww:utils/_join_string with storage ww:temp joinStringInput

data modify storage ww:temp printInput set value {}
data modify storage ww:temp printInput.message set from storage ww:output joinString
function ww:narrator/navigate/_print with storage ww:temp printInput

tellraw @a[predicate=!ww:alive] ""