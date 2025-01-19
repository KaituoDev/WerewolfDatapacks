execute if predicate ww:morning run bossbar set minecraft:time name [{"text":"白天倒數","color":"yellow","bold":true}," ",{"score":{"name":"%time","objective":"system"},"color":"gold"}]
execute if predicate ww:night run bossbar set minecraft:time name [{"text":"夜晚倒數","color":"yellow","bold":true}," ",{"score":{"name":"%time","objective":"system"},"color":"gold"}]

execute store result bossbar minecraft:time value run scoreboard players get %time system