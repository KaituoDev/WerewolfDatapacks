## MINIMUM: 1, MAXIMUM: players count - 1

execute store result score %players var if entity @a[predicate=!ww:god]
scoreboard players add %fool pool 1
execute if score %fool pool > %players var run scoreboard players set %fool pool 0
execute if entity @s[predicate=ww:sneaking] run scoreboard players set %fool pool 0

tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"蠢蛋"},{"text":"數量已改為 "},{"score":{"name":"%fool","objective":"pool"},"color":"green","bold":true}]

execute if score %koumi_map system matches 1 run function pm:setting/update/signs