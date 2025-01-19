# context: server
# storage: ww:temp candidates
# inputs: {index}

$execute store result score %count ww.var run data get storage ww:temp candidates[$(index)].count
execute store result score %map ww.system run scoreboard players remove %count ww.var 1

$tellraw @a [{"text":"随机地图 - ","color":"aqua"},{"nbt":"candidates[$(index)].name","storage":"ww:temp","bold":true,"color":"green"}]