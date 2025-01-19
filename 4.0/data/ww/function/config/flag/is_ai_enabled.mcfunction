# context: server

execute store result score %aiCount ww.var run data get storage ww:memory config.AI_COUNT
execute if score %aiCount ww.var matches 1.. run return 1

return 0