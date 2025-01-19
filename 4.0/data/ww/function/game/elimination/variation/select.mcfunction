# context: @s = player | villager
# score: @s ww.elimination

data modify storage ww:temp getUUIDInput set value {}
execute store result storage ww:temp getUUIDInput.score int 1 run scoreboard players get @s ww.elimination

scoreboard players reset @s ww.elimination
scoreboard players enable @s ww.elimination

# 1. get the corresponding player's uuid info by ww.globalId
execute store result score %success ww.var run function ww:player/id/_get_uuid with storage ww:temp getUUIDInput
execute if score %success ww.var matches 0 run return fail

# bomb timer
data modify storage ww:temp passBombInput set value {}
data modify storage ww:temp passBombInput.source set from entity @s UUID
data modify storage ww:temp passBombInput.victim set from storage ww:output playerUUID
execute if score @s ww.bomb matches 1.. run function ww:skill/implant_bomb/_pass with storage ww:temp passBombInput

data modify storage ww:temp saveInput set value {}
data modify storage ww:temp saveInput.uuid set from storage ww:output playerUUID

# 2. store selected player
function ww:game/elimination/variation/_save with storage ww:temp saveInput