# context: @s = player | villager
# note: given an ingame global id score, get UUID of the entity

execute unless score @s ww.globalId matches 1.. store result score @s ww.globalId run \
  scoreboard players add %currentGlobalId ww.system 1

# store the global id in a map so that if the player ever goes offline
# any uuid lookup would still work
data modify storage ww:temp setGlobalIdInput set value {}
data modify storage ww:temp setGlobalIdInput.uuid set from entity @s UUID
execute store result storage ww:temp setGlobalIdInput.score int 1 run scoreboard players get @s ww.globalId
function ww:player/id/_set with storage ww:temp setGlobalIdInput



return run scoreboard players get @s ww.globalId