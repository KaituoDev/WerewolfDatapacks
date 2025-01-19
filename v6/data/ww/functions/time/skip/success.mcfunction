scoreboard players set @s skip 1

clear @s warped_fungus_on_a_stick{skip:1b}

# subtract (max time / alive players count) from %time system

scoreboard players set %temp var 0
execute if predicate ww:morning run scoreboard players operation %temp var = %MORNING_TIME constant
execute if predicate ww:night run scoreboard players operation %temp var = %NIGHT_TIME constant
execute store result score %players var if entity @a[tag=alive]
scoreboard players operation %temp var /= %players var

scoreboard players operation %time system -= %temp var

execute if predicate ww:morning run tellraw @a [{"selector":"@s","color":"white","bold":true},{"text":" 使用跳過白天, 減少了時間倒數 ","color":"white","bold":false},{"score":{"name":"%temp","objective":"var"},"color":"green","bold":true},{"text":" 秒","color":"white","bold":false}]

execute if predicate ww:night run tellraw @a [{"selector":"@s","color":"white","bold":true},{"text":" 使用跳過夜晚, 減少了時間倒數 ","color":"white","bold":false},{"score":{"name":"%temp","objective":"var"},"color":"green","bold":true},{"text":" 秒","color":"white","bold":false}]

execute if score %time system matches ..-1 run scoreboard players set %time system 0

# function ww:time/skip/count
