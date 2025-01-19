# context: server
# scores: %santaRage ww.system

data modify storage ww:temp santaRageInput set value {}
execute store result storage ww:temp santaRageInput.time int 1 run \
 scoreboard players get %santaRage ww.system
scoreboard players set %santaRage ww.system 0

function ww:role/santa/_night_rage with storage ww:temp santaRageInput