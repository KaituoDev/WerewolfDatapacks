execute store result score %alive var if entity @a[tag=alive]
execute store result score %skipping var if entity @a[scores={skip=1..}]
scoreboard players operation %diff var = %alive var
scoreboard players operation %diff var -= %skipping var

execute if predicate ww:morning run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"跳過白天進度: "},{"score":{"name":"%skipping","objective":"var"}}," / ",{"score":{"name":"%alive","objective":"var"}}]
execute if predicate ww:night run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"跳過夜晚進度: "},{"score":{"name":"%skipping","objective":"var"}}," / ",{"score":{"name":"%alive","objective":"var"}}]

execute as @a unless score @s skip matches 1.. run tag @s add currentTarget

execute if score %diff var matches 1..3 if predicate ww:night run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"selector":"@a[tag=currentTarget]","bold":true},{"text":" 還沒做好進入白天的準備","color":"red"}]
execute if score %diff var matches 1..3 if predicate ww:morning run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"selector":"@a[tag=currentTarget]","bold":true},{"text":" 還沒做好進入晚上的準備","color":"red"}]

tag @a remove currentTarget

execute if score %skipping var >= %alive var run function ww:time/swap