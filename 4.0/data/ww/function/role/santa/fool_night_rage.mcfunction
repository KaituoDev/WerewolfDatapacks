# context: server
# scores: %foolSantaRage ww.system

data modify storage ww:temp santaRageInput set value {}
execute store result storage ww:temp santaRageInput.time int 1 run \
 scoreboard players get %foolSantaRage ww.system
scoreboard players set %foolSantaRage ww.system 0

function ww:role/santa/_fool_night_rage with storage ww:temp santaRageInput