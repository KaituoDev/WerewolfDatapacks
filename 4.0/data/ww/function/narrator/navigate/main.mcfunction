# context: @s = player
# scores: ww.navigateToAI

data modify storage ww:temp teleportInput set value {}
execute store result storage ww:temp teleportInput.id int 1 run \
 scoreboard players get @s ww.navigateToAI

function ww:narrator/navigate/_teleport with storage ww:temp teleportInput
scoreboard players reset @s ww.navigateToAI
scoreboard players enable @s ww.navigateToAI