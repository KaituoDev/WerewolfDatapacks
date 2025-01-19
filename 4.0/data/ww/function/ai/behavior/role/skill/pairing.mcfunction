# context: @s = villager
# location: at @s

scoreboard players set @s ww.ai.pairing_attempted 1

data modify storage ww:temp skillInput set value {}
execute store result storage ww:temp skillInput.count int 1 run \
 data get storage ww:memory config.LOVERS_COUNT

function ww:ai/behavior/role/skill/_pairing with storage ww:temp skillInput