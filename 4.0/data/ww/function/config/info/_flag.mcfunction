# context: @s = player
# inputs: {id, name}

$execute store result score %temp ww.var run data get storage ww:memory config.'$(id)'

$execute if score %temp ww.var matches 1 run tellraw @s [{"text":"♦ ","color":"yellow"}, {"text":"$(name): ","color":"aqua"},{"text":"已开启","color":"green","bold":true}]