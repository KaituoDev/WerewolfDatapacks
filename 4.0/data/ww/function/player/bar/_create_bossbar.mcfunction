# context: @s = player
# inputs: id

$bossbar add $(id) ""
$bossbar set $(id) players @s
$bossbar set $(id) visible true
$bossbar set $(id) style progress
$bossbar set $(id) color blue

scoreboard players set @s ww.capacity 100
scoreboard players operation @s ww.energy = @s ww.capacity

$function ww:player/bar/update/_recalculate {id:"$(id)"}