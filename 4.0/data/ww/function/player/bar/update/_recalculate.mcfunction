# context: @s = player
# inputs: id

$execute store result bossbar $(id) max run scoreboard players get @s ww.capacity
$execute store result bossbar $(id) value run scoreboard players get @s ww.energy

execute if score @s ww.energy > @s ww.capacity run scoreboard players operation @s ww.energy = @s ww.capacity

execute store result storage ww:temp range int 0.5 run scoreboard players get @s ww.capacity
execute store result score %yellowRange ww.var run data get storage ww:temp range

execute store result storage ww:temp range int 0.25 run scoreboard players get @s ww.capacity
execute store result score %redRange ww.var run data get storage ww:temp range

$data modify storage ww:temp updateBarDisplayInput set value {id: $(id)}
execute store result storage ww:temp updateBarDisplayInput.currentAmount int 1 run scoreboard players get @s ww.energy
execute store result storage ww:temp updateBarDisplayInput.maxAmount int 1 run scoreboard players get @s ww.capacity

data modify storage ww:temp updateBarDisplayInput.currentAmountColor set value "green"
execute if score @s ww.energy < %yellowRange ww.var run data modify storage ww:temp updateBarDisplayInput.currentAmountColor set value "yellow"
execute if score @s ww.energy < %redRange ww.var run data modify storage ww:temp updateBarDisplayInput.currentAmountColor set value "red"
function ww:player/bar/update/_bar_display with storage ww:temp updateBarDisplayInput