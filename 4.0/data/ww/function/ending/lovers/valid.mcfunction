# context: @s = player | villager
# output: 1 = true, 0 = false

execute if score %shouldContinueLoversValidation ww.var matches 0 run return 0

tag @e[predicate=ww:player,tag=ww.loversAlive] remove ww.loversAlive

data modify storage ww:temp tagLoversInput set value {}
execute store result storage ww:temp tagLoversInput.group int 1 run scoreboard players get @s ww.pairingGroup

# iterate through .players, tag them
function ww:ending/lovers/_tag_lovers with storage ww:temp tagLoversInput

# compare against total alive count
execute store result score %loversAliveCount ww.var if entity @e[predicate=ww:alive,tag=ww.loversAlive]
execute unless score %loversAliveCount ww.var = %alives ww.system run tag @e[predicate=ww:player,tag=ww.loversAlive] remove ww.loversAlive
execute unless score %loversAliveCount ww.var = %alives ww.system run return 0

# lovers win
scoreboard players set %shouldContinueLoversValidation ww.var 0
function ww:ending/winner/lovers
tag @e[predicate=ww:player,tag=ww.loversAlive] remove ww.loversAlive

return 1